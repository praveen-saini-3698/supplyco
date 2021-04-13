const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: false,

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.permissions = require("./permissions.model")(sequelize, Sequelize);
db.permissionAssignments = require("./permission.assignment.model")(sequelize, Sequelize);
db.roleAssignments = require("./role.assignment.model")(sequelize, Sequelize);
db.roles = require("./roles.model")(sequelize, Sequelize);
db.serviceCategory = require("./service.category.model")(sequelize, Sequelize);
db.serviceMaster = require("./service.master.model")(sequelize, Sequelize);
db.services = require("./services.model")(sequelize, Sequelize);
db.userCategory = require("./user.category.model")(sequelize, Sequelize);
db.users = require("./user.model")(sequelize, Sequelize);

module.exports = db;