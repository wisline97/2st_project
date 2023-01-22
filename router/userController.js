var mysql = require("mysql");
var conn_info = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "seoulstore",
};

module.exports = function (app) {
  app.get("/login", function (req, res) {
    var log = req.session.log;

    var renderData = {
      log: log,
    };

    res.render("user/login.ejs", renderData);
  });

  app.get("/loginPro", function (req, res) {
    var log = req.session.log;

    var memberId = req.query.userId;
    var memberPw = req.query.userPw;

    var conn = mysql.createConnection(conn_info);
    var sql =
      "SELECT memberName FROM userdata WHERE memberId = ? AND memberPw = ? ";
    var inputData = [memberId, memberPw];

    conn.query(sql, inputData, function (error, rows) {
      var location = "";

      if (rows[0] == null) {
        location = "new";
      } else {
        var memberName = rows[0].memberName;

        req.session.log = memberId;
        req.session.name = memberName;
        location = "index";
      }
      conn.end();
      res.redirect(location);
    });
  });

  app.get("/logout", function (req, res) {
    req.session.log = null;
    req.session.name = null;

    res.redirect("index");
  });

  app.get("/join", function (req, res) {
    res.render("user/join.ejs");
  });
};
