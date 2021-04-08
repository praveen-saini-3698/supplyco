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

exports.userIdValidator = validate(userIdValidator, {}, {});
exports.editUserRoleValidator = validate(editUserRoleValidator, {}, {});