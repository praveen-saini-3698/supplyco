const db = require("../models");
const handler = require("../response-handler/handler");
const Users = db.users;
const Roles = db.roles;
const Op = db.Sequelize.Op;

// Retrieve all Userss from the database.
exports.findAllActiveUsers = async (req, res) => {
  try {
    const data = await Users.findAll({ where: { isActive: { [Op.eq]: true } } });
    return handler.success(res, data);
  } catch (err) {
    return handler.error(res, err);
  }
};

exports.getUserAllRoles = async (req, res) => {
  try {
    const userId = req.params.userId;
    Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
    const data = await Users.findAll({
      include: [Roles]
    });
    return handler.success(res, data);
  } catch (error) {
    return handler.error(res, error);
  }
};

exports.findById = async (req, res) => {
  try {
    const id = req.params.userId;
    Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
    const data = await Users.findAll({
      include: [Roles],
      where: { User_ID: id }
    });
    return handler.success(res, data);
  } catch (error) {
    return handler.error(res, error);
  }
};

exports.editUserRoles = async (req, res) => {
  try {
    const userId = req.body.userId;
    const roleId = req.body.roleId;
    const modifiedBy = req.body.modifiedBy;
    const data = await Users.update({
      Role_ID: roleId,
      Modified_Date: 'CURRENT_TIMESTAMP',
      ModifiedBy: modifiedBy
    }, { where: { User_ID: userId } });
    return handler.success(res, data, "Role updated successfully");
  } catch (error) {
    return handler.error(res, error);
  }
};

exports.SelectUserRolesByParameters = async (req, res) => {
  try {
    const userId = req.body?.userId ? req.body.userId : null;
    const userName = req.body?.userName ? req.body.userName : null;
    const userContactNumber = req.body?.userContactNumber ? req.body.userContactNumber : null;
    const userEmail = req.body?.userEmail ? req.body.userEmail : null;
    let data = null;
    if (userId) {
      Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
      data = await Users.findAll({
        include: [Roles]
      }, { where: { User_ID: userId } });
    } else if (userName) {
      Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
      data = await Users.findAll({
        include: [Roles]
      }, { where: { UserName: userName } });
    } else if (userContactNumber) {
      Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
      data = await Users.findAll({
        include: [Roles]
      }, { where: { ContactNumber: userContactNumber } });
    } else if (userEmail) {
      Users.belongsTo(Roles, { foreignKey: 'Role_ID' });
      data = await Users.findAll({
        include: [Roles]
      }, { where: { Email: userEmail } });
    } else {
      throw new Error("Atleast one parameter is required");
    }
    return handler.success(res, data);
  } catch (error) {
    return handler.error(res, error);
  }
};