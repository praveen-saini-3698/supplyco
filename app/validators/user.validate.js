const { validate, Joi } = require('express-validation')

const loginValidation = {
  body: Joi.object({
    email: Joi.string()
      .email()
      .required(),
    password: Joi.string()
      .regex(/[a-zA-Z0-9]{3,30}/)
      .required(),
  }),
}

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

exports.userIdValidator = validate(userIdValidator, {}, {});
exports.editUserRoleValidator = validate(editUserRoleValidator, {}, {});
exports.userParamValidator = validate(userParamValidator, {}, {});