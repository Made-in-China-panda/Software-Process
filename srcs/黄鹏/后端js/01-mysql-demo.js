#!/usr/bin/node

const http = require('http');
const mysql = require('mysql');
const con  = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'ddd',
  database:'test'
})

http.createServer(function(req,res){
  var body;
  con.query('select * from books',(err,result)=>{
    if(err){
      console.log(err);
      process.exit(10);
    }
    body = result;
    body = JSON.stringify(body);
    console.log(body);
    console.log(typeof(body));
    res.end(body);
  });

}).listen(8080);

