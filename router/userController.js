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
        location = "login";
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

  app.get("/joinPro", function(req, res){
    var log = req.session.log;
    var userId = req.query.userId;
    var userPw = req.query.userPw;
    var userName = req.query.userName;
    var userEmail = req.query.userEmail;

    var conn = mysql.createConnection(conn_info);
    var sql1 = "SELECT MAX(memberNo) FROM userdata";

    conn.query(sql1, function(error, rows) {
        var json = JSON.stringify(rows);
        var data = JSON.parse(json);
        var memberNo = data[0]["MAX(memberNo)"] + 1;
        
        var sql2 = "INSERT INTO userdata VALUES(?, ?, ?, ?, ?)";
        var inputData = [memberNo, userId, userPw, userName, userEmail];
        conn.query(sql2, inputData, function(error) {
            conn.end();
            res.redirect("login"); 
        });
    });
  });
};
