const db = require("../models");
const Roles = db.roles;


// Retrieve all Roless from the database.
exports.findAll = async (req, res) => {
  try {
    const data = await Roles.findAll({ where: null })
    res.send(data);
  } catch (err) {
    res.status(500).send({
      message:
        err.message || "Some error occurred while retrieving tutorials."
    });
  }
};