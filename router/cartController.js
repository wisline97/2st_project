var mysql = require("mysql");
var conn_info = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "seoulstore",
}; 

module.exports = function (app) {
    app.get("/addCart", function(req,res){
        var log = req.session.log;
        if (log != null){
            var userId = req.session.log;
            var prdImg = req.query.prdImg;
            var prdName = req.query.prdName;
            var brdName = req.query.brdName;
            var prdSale = req.query.prdSale;
            var prdPrice = req.query.prdPrice;
            var prdDiscount = req.query.prdDiscount;
            var sql1 = "SELECT MAX(cartNo) FROM cartdata";
            var conn = mysql.createConnection(conn_info);

            conn.query(sql1, function(error, rows){
                var json = JSON.stringify(rows);
                var data = JSON.parse(json);
                var cartNo = data[0]["MAX(cartNo)"] + 1;

                var sql2 = "INSERT INTO cartdata VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
                var inputData = [cartNo, userId, prdName, brdName, prdImg, prdSale, prdPrice, prdDiscount];
                conn.query(sql2, inputData, function(error) {
                    conn.end();
                    res.redirect("cart");
                });
            });
        } else{
            res.redirect("login");
        };
    });


    app.get("/cart", function(req, res){
        var log = req.session.log;
        var name = req.session.name;

        var sql1 = "SELECT * FROM cartdata Where cartMemberId = ?";
        var conn = mysql.createConnection(conn_info);
        var inputData = [log];

        conn.query(sql1, inputData, function(error, rows){
            req.session.cartLength = rows.length;
            var cartLength = req.session.cartLength;
        var renderData = {
            log : log,
            name: name,
            cartList: rows,
            cartLength: cartLength
        }
        res.render("cart/cart.ejs", renderData);
    });
});

    app.get("/deleteCart", function(req, res){
        var cartNo = req.query.cartNo;

        var sql = "DELETE FROM cartdata WHERE cartNo = ?";
        var conn = mysql.createConnection(conn_info);
        var inputData = [cartNo];

        conn.query(sql, inputData, function(error, rows){
            res.redirect("cart");
        })
    });
};