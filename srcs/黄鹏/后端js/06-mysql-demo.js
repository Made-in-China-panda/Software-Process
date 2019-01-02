#!/usr/bin/node 
const http = require('http'); 
const mysql = require('mysql'); 
const con = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'ddd',
  database:'myjob'
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
    case 'OPTIONS':
      option(req,res);
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
    var users = JSON.parse(data);
    console.log(users);
    console.log(users.id); 
  var key = req.url.slice(1);
  console.log(key);
  
  if(key=='admin'){
    var b = [users.id,users.name,users.phone,users.email];
    console.log(b);
    con.query('delete from '+ key +' where id = ?;',[users.id],(err,result)=>{
    if(err){
        console.log(err.message);
        process.exit(1);
      }
    });
    console.log(10);
    con.query('insert into '+ key +' values('+b[0]+','+b[1]+','+b[2]+','+b[3]+')' ,[],(err,result)=>{
      if(err){
        console.log(err.message);
      }
      res.setHeader('Access-Control-Allow-Origin','*');
      res.end();
    });
  }

  if(key=='users'){
    var a = [users.id,users.name,users.password,users.mibao];
    con.query('delete from '+ key +' where id = ?;',[users.id],(err,result)=>{
      if(err){
        console.log(err.message);
        process.exit(1);
      }
    });
  
  console.log(key);
  console.log(20);
    con.query('insert into '+ key +'(id,name,password,mibao) values( ? , ?, ?, ?)',a,(err,result)=>{
      if(err){
        console.log(err.message);
        process.exit(1);
      }
      //console.log(result);
      res.setHeader('Access-Control-Allow-Origin','*');
      res.end();
    })
  }
  })
};

function remove(req,res){

};

function option(req,res){
  console.log(req.url);
  var a =[];
  a[0] = req.url.split('/')[1];
  a[1] = req.url.split('/')[2];
  a[2] = req.url.split('/')[3];
  con.query('delete from '+ a[0]+' where '+a[1]+' = ?;',a[2],(err,result)=>{
    if(err){
      console.log(err.message);
    }
  })
  //res.setHeader('Access-Control-Allow-Origin','*');
  res.end();
}
