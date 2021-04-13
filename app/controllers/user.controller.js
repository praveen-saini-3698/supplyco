const db = require("../models");
const handler = require("../handler/response.handler");
const authHandler = require("../handler/auth.handler");
const Users = db.users;
const Roles = db.roles;
const Permissions = db.permissions;
const PermissionAssignment = db.permissionAssignments;
const RoleAssignments = db.roleAssignments;
const Op = db.Sequelize.Op;
const MD5 = require("md5");
const atob = require("atob");
const _ = require("underscore");

exports.login = async (req, res) => {
  try {
    const email = req.body.email;
    const password = MD5(atob(req.body.password));
    const t = Number(process.env.TOKEN_LIFE) + 's';
    let data = {};
    let loginData = await Users.findAll({ where: { email: { [Op.eq]: email }, password: { [Op.eq]: password } } });
    if (loginData?.length > 0) {
      loginData = loginData[0];
      delete loginData.password;
      let userRoles = await RoleAssignments.findAll({ where: { user_id: { [Op.eq]: loginData.id } } });
      let userRolePermissions = {};
      let rolePermissions = {};
      if (userRoles?.length) {
        userRoles = _.groupBy(userRoles, 'role_id');
        Object.keys(userRoles).map(element => {
          userRoles[element] = userRoles[element][0];
        });
        rolePermissions = await PermissionAssignment.findAll({ where: { role_id: { [Op.in]: Object.keys(userRoles) } } });
        if (rolePermissions?.length) {
          rolePermissions = _.groupBy(rolePermissions, 'role_id');
          Object.keys(rolePermissions).map(element => {
            userRolePermissions[element] = rolePermissions[element][0];
          });
        }
      }
      const payload = JSON.parse(JSON.stringify({ loginData, userRolePermissions }));
      const token = await authHandler.generateToken(payload);
      data = { token };
    } else {
      throw new Error("Email or password is incorrect");
    }
    return handler.success(res, data);
  } catch (error) {
    return handler.error(res, error);
  }
};

exports.

exports.registerUser = async (req, res) => {
  try {
    const payload = req.payload;

    const firstName = req.body.firstName;
    const lastName = req.body.lastName;
    const email = req.body.email;
    const password = req.body.password;
    const mobileNo = req.body.mobileNo;
    const type = String(req.body.type);
    const createdBy = req.body?.createdBy ? req.body.createdBy : (payload?.loginData?.id ? payload.loginData.id : "");
    const updatedBy = req.body?.updatedBy ? req.body.updatedBy : (payload?.loginData?.id ? payload.loginData.id : "");

    if (createdBy) {
      const has = await hasPermission(createdBy, 'can_create');
      if (!has) {
        throw new Error('You are not allowed to signup.');
      }
    }

    if (!['customer', 'vendor'].includes(type.toLowerCase())) {
      throw new Error('You are not allowed to signup.');
    }
    const create = await Users.create({
      first_name: firstName,
      last_name: lastName,
      email: email,
      mobile_no: mobileNo,
      password: MD5(password),
      created_by: createdBy,
      updated_by: updatedBy,
      created_at: 'current_timestamp',
      updated_at: 'current_timestamp'
    });
    let roles = await Roles.findAll({
      attributes: ['id']
    }, { where: { role: { [Op.eq]: type } } });
    if (roles?.length) {
      roles = roles[0];
      const setRole = await RoleAssignments.create({
        user_id: create.id,
        role_id: roles.id,
        created_by: createdBy,
        updated_by: updatedBy,
        created_at: 'current_timestamp',
        updated_at: 'current_timestamp'
      });
    }
    return handler.success(res, true);
  } catch (error) {
    return handler.error(res, error);
  }
};

async function hasPermission(role_id, type) {
  try {
    const permissions = await PermissionAssignment.findAll({ where: { role_id: { [Op.eq]: role_id } } });
    if (permissions?.length) {
      return permissions[0][type] == 1 ? true : false;
    } else {
      return false;
    }
  } catch (error) {
    throw error;
  }
}


exports.addUser = async (req, res) => { };
exports.deleteUser = async (req, res) => { };
exports.editUserRoles = async (req, res) => { };