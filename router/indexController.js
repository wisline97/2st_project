var mysql = require("mysql");
var conn_info = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "seoulstore",
};

//판매수량 기준으로 상품DB 만들기
// function getSalesRankDB(){

// };

module.exports = function (app) {
  app.get("/index", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
      };
      conn.end();
      res.render("index/index.ejs", renderData);
    });
  });
};
