module.exports = app => {
    const users = require("../controllers/user.controller");
    const validator = require("../validators/user.validate");

    const router = require("express").Router();

    // Retrieve all users
    router.get("/all-users", users.findAllActiveUsers);

    router.get("/getUserAllRoles", users.getUserAllRoles);
    router.get("/getUserRolesByID/:userId", validator.userIdValidator, users.findById);
    router.post("/editUserRoles", validator.editUserRoleValidator, users.editUserRoles);

    app.use('/api/users', router);
};