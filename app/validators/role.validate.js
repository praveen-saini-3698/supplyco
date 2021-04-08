const { validate, Joi } = require('express-validation')

const loginValidation = {
  body: Joi.object({
    email: Joi.string()
      .email()
      .required(),
    password: Joi.string()
      .regex(/[a-zA-Z0-9]{3,30}/)
      .required(),
  })
}

const getRolesByIdValidator = {
  params: Joi.object({
    id: Joi.number().required()
  })
};


const editUserRoleValidator = {
  body: Joi.object({
    roleId: Joi.number().required(),
    roleName: Joi.string().required(),
    modifiedBy: Joi.string().required(),
    isActive: Joi.number()
  })
};

exports.getRolesByIdValidator = validate(getRolesByIdValidator, {}, {});
exports.editUserRoleValidator = validate(editUserRoleValidator, {}, {});