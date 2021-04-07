module.exports = app => {
    const users = require("../controllers/user.controller.js");

    const router = require("express").Router();
    
    // Retrieve all users
    router.get("/all-users", users.findAllActiveUsers);

    app.use('/api/users', router);
};