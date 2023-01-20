var express = require("express");
var app = express();
var port = 1234;
var sever = app.listen(port, function () {
  console.log(`${port}st sever is working`);
});

var ejs = require("ejs");
app.set("view engine", "ejs");
app.set("views", __dirname + "/views");

app.use(express.static(__dirname + "/public"));

var session = require("express-session");
app.use(
  session({
    secret: "abcdefg",
    resave: false,
    saveUninitialized: false,
  })
);

require("./router/indexController")(app);

app.get("/", function (req, res) {
  req.session.log = null;
  req.session.name = null;

  res.redirect("index");
});
