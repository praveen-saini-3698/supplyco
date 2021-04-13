module.exports = async (app) => {
    
    const authHandler = require('../handler/auth.handler');
    const users = require("../controllers/user.controller");
    const validator = require("../validators/user.validate");

    const router = require("express").Router();

    router.post("/login", validator.loginValidator, users.login);
    router.post("/signup", validator.signupValidator, users.registerUser);

    router.post("/addUser", [authHandler.verifyToken, validator.addUserValidator], users.addUser);
    router.post("/editUserRoles", [authHandler.verifyToken, validator.editUserRoleValidator], users.editUserRoles);
    router.post("/deleteUser", [authHandler.verifyToken, validator.deleteUserValidator], users.deleteUser);

    app.use('/api/users', router);
};