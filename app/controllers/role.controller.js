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
    const id = req.params && req.params.id ? req.params.id : null;
    if (!(id)) {
      throw new Error("role id missing");
    }
    const data = await Roles.findByPk(id);
    return handler.success(res, data);
  } catch (error) {
    return helper.error(res, error);
  }
};