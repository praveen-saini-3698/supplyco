module.exports = app => {
    const users = require("../controllers/user.controller");
    const validator = require("../validators/user.validate");

    const router = require("express").Router();

    // Retrieve all users
    router.get("/allUsers", users.findAllActiveUsers);

    router.get("/getUserAllRoles", users.getUserAllRoles);
    router.get("/getUserRolesByID/:userId", validator.userIdValidator, users.findById);
    router.post("/editUserRoles", validator.editUserRoleValidator, users.editUserRoles);
    router.post("/selectUserRolesByParameters", validator.userParamValidator, users.SelectUserRolesByParameters);

    app.use('/api/users', router);
};