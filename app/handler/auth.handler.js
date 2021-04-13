
const jwt = require("jsonwebtoken");
const dotenv = require("dotenv");
const handler = require("./response.handler")
dotenv.config();

exports.generateToken = async (payload) => {
    const expiry = process.env.TOKEN_LIFE;
    console.log({ expiry });
    return await jwt.sign(payload, process.env.TOKEN_SECRET, { expiresIn: expiry });
};

exports.verifyToken = async (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const token = authHeader && authHeader.split(' ')[1];
    if (token == null) return handler.error(res, new Error('Token is missing'), 401);
    jwt.verify(token, process.env.TOKEN_SECRET, (err, payload) => {
        if (err) return handler.error(res, err, 401);
        req.payload = payload;
        next()
    });
};

exports.refreshToken = async (req, res, next) => {
    
};