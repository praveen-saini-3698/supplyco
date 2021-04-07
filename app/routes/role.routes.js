module.exports = app => {
  const roles = require("../controllers/role.controller.js");

  const router = require("express").Router();

  // Retrieve all Tutorials
  router.get("/all-roles", roles.findAll);

  app.use('/api/roles', router);
};
