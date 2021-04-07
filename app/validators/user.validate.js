const express = require('express')
const bodyParser = require('body-parser')
const { validate, ValidationError, Joi } = require('express-validation')

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

const app = express();
app.use(bodyParser.json())

app.post('/login', validate(loginValidation, {}, {}), (req, res) => {
  res.json(200)
})

app.use(function(err, req, res, next) {
  if (err instanceof ValidationError) {
    return res.status(err.statusCode).json(err)
  }

  return res.status(500).json(err)
})

app.listen(3000)