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
    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/index.ejs", renderData);
    });
  });

  app.get("/best", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData ORDER BY prd_salesCount DESC";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/best.ejs", renderData);
    });
  });

  app.get("/hoodie", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_kind like '%hoodie%'";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/hoodie.ejs", renderData);
    });
  });

  app.get("/handbag", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_kind like '%bag%'";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/handbag.ejs", renderData);
    });
  });

  app.get("/beauty", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var cartLength = req.session.cartLength;


    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_kind like '%beauty%'";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/beauty.ejs", renderData);
    });
  });

  app.get("/new", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_new = True";

    conn.query(sql, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/new.ejs", renderData);
    });
  });

  app.get("/prdSearchPro", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var searchItem = req.query.searchItem;

    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_kind like ?";
    var inputData = ["%" + searchItem + "%"];

    conn.query(sql, inputData, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        searchItem: searchItem,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/prdSearch.ejs", renderData);
    });
  });

  app.get("/prdInfo", function (req, res) {
    var log = req.session.log;
    var name = req.session.name;
    var prd_No = req.query.prd_No;

    var cartLength = req.session.cartLength;

    var conn = mysql.createConnection(conn_info);
    var sql = "SELECT * FROM prdData WHERE prd_No = ?";
    var inputData = [prd_No];

    conn.query(sql, inputData, function (error, rows) {
      var renderData = {
        log: log,
        name: name,
        prdList: rows,
        cartLength: cartLength
      };
      conn.end();
      res.render("index/prdInfo.ejs", renderData);
    });
  });

  //module.exports 끝
};
