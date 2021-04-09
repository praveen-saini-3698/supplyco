const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const handler = require("./app/response-handler/handler");
const { ValidationError } = require('express-validation')
const app = express();

var corsOptions = {
  origin: "http://localhost:8081"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

const db = require("./app/models");

db.sequelize.sync();

// simple route
app.get("/", (req, res) => {
  res.json({ message: "Welcome to bezkoder application." });
});

require("./app/routes/role.routes")(app);
require("./app/routes/user.routes")(app);

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});

app.use((err, _req, res, _next) => {
  if (err instanceof ValidationError) {
    return res.status(err.statusCode).json(err);
  }
  return handler.error(res, err);
});