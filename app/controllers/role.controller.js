const db = require("../models");
const handler = require("../response-handler/handler")
const Roles = db.roles;

// Retrieve all Roless from the database.
exports.findAll = async (req, res) => {
  try {
    const data = await Roles.findAll({ where: null });
    return handler.success(res, data);
  } catch (err) {
    return handler.error(res, err);
  }
};

exports.findById = async (req, res) => {
  try {
    const id = req.params.id;
    const data = await Roles.findByPk(id);
    return handler.success(res, data);
  } catch (error) {
    return handler.error(res, error);
  }
};

exports.editUserRoles = async (req, res) => {
  try {
    const roleId = req.body.roleId;
    const modifiedBy = req.body.modifiedBy;
    const roleName = req.body.roleName;
    const data = await Roles.update({
      Modified_Date: 'CURRENT_TIMESTAMP',
      ModifiedBy: modifiedBy,
      RoleName: roleName
    }, { where: { Role_ID: roleId } });
    return handler.success(res, data, "Role updated successfully");
  } catch (error) {
    return handler.error(res, error);
  }
};