module.exports = async (app) => {
    const jwt = require('jsonwebtoken');
    const handler = require('../response-handler/handler')
    const users = require("../controllers/user.controller");
    const validator = require("../validators/user.validate");

    const router = require("express").Router();

    // Retrieve all users
    router.post("/login", validator.loginValidator, users.login);
    router.get("/allUsers", authenticateToken, users.findAllActiveUsers);
    router.get("/getUserAllRoles", authenticateToken, users.getUserAllRoles);
    router.get("/getUserRolesByID/:userId", [authenticateToken, validator.userIdValidator], users.findById);
    router.post("/editUserRoles", [authenticateToken, validator.editUserRoleValidator], users.editUserRoles);
    router.post("/selectUserRolesByParameters", [authenticateToken, validator.userParamValidator], users.SelectUserRolesByParameters);

    function authenticateToken(req, res, next) {
        const authHeader = req.headers['authorization'];
        const token = authHeader && authHeader.split(' ')[1];
        if (token == null) return handler.error(res, new Error('Token is missing'), 401);
        jwt.verify(token, process.env.TOKEN_SECRET, (err, user) => {
            if (err) handler.error(res, err, 401);
            req.user = user
            console.log({ user });
            next()
        });
    }
    app.use('/api/users', router);
};