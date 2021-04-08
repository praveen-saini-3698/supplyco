module.exports = app => {
  const roles = require("../controllers/role.controller.js");
  const validator = require("../validators/role.validate");

  const router = require("express").Router();

  // Retrieve all Tutorials
  router.get("/getAllUserRoles", roles.findAll);
  router.post("/editUserRoles", validator.editUserRoleValidator, roles.editUserRoles);

  app.use('/api/roles', router);
};
