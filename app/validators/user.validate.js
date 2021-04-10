const { validate, Joi } = require('express-validation')

const userIdValidator = {
  params: Joi.object({
    userId: Joi.number().required()
  })
};

const editUserRoleValidator = {
  body: Joi.object({
    roleId: Joi.number().required(),
    userId: Joi.number().required(),
    modifiedBy: Joi.string().required()
  })
};

const userParamValidator = {
  body: Joi.object({
    userId: Joi.number(),
    userName: Joi.string(),
    userContactNumber: Joi.number(),
    userEmail: Joi.string().regex(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/)
  })
};

const loginValidator = {
  body: Joi.object({
    userName: Joi.string().required(),
    password: Joi.string().required()
  })
}

exports.userIdValidator = validate(userIdValidator, {}, {});
exports.editUserRoleValidator = validate(editUserRoleValidator, {}, {});
exports.userParamValidator = validate(userParamValidator, {}, {});
exports.loginValidator = validate(loginValidator, {}, {});