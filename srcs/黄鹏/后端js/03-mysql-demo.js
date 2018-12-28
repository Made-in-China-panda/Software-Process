#!/usr/bin/node 
const http = require('http'); 
const mysql = require('mysql'); 
const con = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'ddd',
  database:'test'
});

http.createServer((req,res)=>{
  console.log(req.method);
  switch(req.method){
    case 'GET':
      select(req,res);
      break;
    case 'POST':
      add(req,res);
      break;
    case 'PUT':
      update(req,res);
      break;
    case 'DELETE':
      remove(req,res);
      break;

    default:
  }  
}).listen(8080);

function select(req,res){
  var key = req.url.slice(1);
  var body;
  con.query('select * from '+key,(err,result)=>{
    if(err){
      console.error(err.message);
      process.exit(1);
    }
    body = JSON.stringify(result);
    console.log(body);
    res.end(body);
  });
  res.setHeader('Access-Control-Allow-Origin','*');
};

function update(req,res){

}
function add(req,res){
  
  req.on('data',function(data){
    console.log(data.toString('utf-8'));
  })

  var a=[5,'黄鹏',10];
  var key = req.url.slice(1);
  console.log(key);
  con.query('insert into '+ key +'(book_id,title,status) values(?,?,?);',a,(err,result)=>{
    if(err){
      console.log(err.message);
      process.exit(1);
    }
    //console.log(result);
    res.setHeader('Access-Control-Allow-Origin','*');
    res.end();
  })
};

function remove(req,res){

};
