module.exports = app => {
  const roles = require("../controllers/role.controller.js");
  const jwt = require('jsonwebtoken');
  const handler = require('../response-handler/handler')
  const validator = require("../validators/role.validate");

  const router = require("express").Router();

  // Retrieve all Tutorials
  router.get("/getAllUserRoles", authenticateToken, roles.findAll);
  router.post("/editUserRoles", [authenticateToken, validator.editUserRoleValidator], roles.editUserRoles);
  
  function authenticateToken(req, res, next) {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return handler.error(res, new Error('Token is missing'), 401);
    jwt.verify(token, process.env.TOKEN_SECRET, (err, user) => {
      if (err) handler.error(res, err, 401);
      req.user = user
      next()
    });
  }
  app.use('/api/roles', router);
};
