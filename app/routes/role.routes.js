module.exports = app => {
  const roles = require("../controllers/role.controller.js");
  const validator = require("../validators/role.validate");

  const router = require("express").Router();

  // Retrieve all Tutorials
  router.get("/GetAllUserRoles", roles.findAll);
  router.get("/GetUserRolesByID/:id", validator.getRolesByIdValidator, roles.findById);

  app.use('/api/roles', router);
};
