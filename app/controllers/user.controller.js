const db = require("../models");
const Users = db.users;
const Op = db.Sequelize.Op;

// Retrieve all Userss from the database.
exports.findAllActiveUsers = async (req, res) => {
  try {
    const data = await Users.findAll({ where: { isActive: { [Op.eq]: true } } });
    res.send(data);
  } catch (err) {
    res.status(500).send({
      message: err.message || "Some error occurred while retrieving tutorials."
    });
  }
};