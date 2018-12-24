#!/usr/bin/node 
const http = require('http'); 
const mysql = require('mysql'); 
const con = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'ddd',
  database:'test'
});

var items = [];

http.createServer((req,res)=>{
  console.log(req.method);
  console.log('');
  switch(req.method){
    case 'GET':
      select(res);
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
  
//  res.end('OK!');
}).listen(8080);
function select(res){

  con.query('select * from books',(err,result)=>{
    var bdoy = JSON.stringify(items);
    if(err){
      console.error(err.message);
      process.exit(1);
    }
    console.log(1)
    console.log(result);
    body = JSON.stringify(result);
    console.log(2)
    console.log(body);
    res.end(body);
  });
  //res.setHeader('Content-Length',Buffer.byteLength(body));
 // res.setHeader('Content-Type','text/plain;charset="utf-8"');
  res.setHeader('Access-Control-Allow-Origin','*');
  //res.end(result);
  //res.end(body);
  //res.end(req.method);
};
function update(req,res){
  var arg = req.url.split('/');
  if(arg[1]===''){
    items = [];
  }
  var item = '';
  req.on('data',function(chunk){item += chunk});
  req.on('end',function(){
    var i = parseInt(arg[1]);

    if(!items[i]){
      res.statusCode = 404;
      res.end('Not found!');
    }else{
      items[i] = item;
      res.end('change OK!');
    }
  });

};
function add(req,res){
  var item = '';
  req.on('data',function(data){item += data});
  req.on('end',function(){
    items.push(item);
  })
  
  con.query('insert into books(book_id,title,status) values(?,?,?)',
  ['103','wangding',0],
  (err,result)=>{
    if(err){
      console.log(err.message);
      process.exit(1);
    }
    console.log(result);
  });
  res.end();
  //res.end(req.method);
};
function remove(req,res){
  console.log(req.url);
  console.log(req.url.split('/'));
  
  var arg = req.url.split('/');
  if(arg[1]===''){
    items = [];
  }
  var i = parseInt(arg[1]);

  if(!items[i]){
    res.statusCode = 404;
    res.end('Not found!');
  }else{
    items.splice(i,1);
    res.end('Delete OK');
  }

  res.end();
};
