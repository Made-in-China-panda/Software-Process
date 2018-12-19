import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router' ;
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-foods',
  templateUrl: './foods.component.html',
  styleUrls: ['./foods.component.css']
})
export class FoodsComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});
  constructor(private http: HttpClient,private router:ActivatedRoute) { }
  input = [{
    name:'',
    taste:'',
    collection:'',
    pic:'',
    material:''
  },{
    name:'',
  taste:'',
  collection:'',
  pic:'',
  material:''
  },{
    name:'',
  taste:'',
  collection:'',
  pic:'',
  material:''
  },{
    name:'',
  taste:'',
  collection:'',
  pic:'',
  material:''
  },{
    name:'',
  pic:'',
  material:''
  },{
    name:'',
  pic:'',
  material:''
  },{
    name:'',
  pic:'',
  material:''
  }]

  foods_lu ;
  foods_chuan;
  foods_su;
  foods_yue;
  sweet_binggan;
  sweet_buding;
  sweet_cake;
  databases =[];
  database = ['foods_lu' ,
    'foods_chuan',
    'foods_su',
    'foods_yue',
    'sweet_binggan',
    'sweet_buding',
    'sweet_cake']
  
  ngOnInit() {
    this.http.get('http://192.168.56.144:8080/food_lu').subscribe(data=>{
      this.foods_lu = data;
      this.databases[0] = this.foods_lu;
    });
    this.http.get('http://192.168.56.144:8080/food_chuan').subscribe(data=>{
      this.foods_chuan = data;
      this.databases[1] = this.foods_chuan;
    });
    this.http.get('http://192.168.56.144:8080/food_su').subscribe(data=>{
      this.foods_su = data;
      this.databases[2] = this.foods_su;
    });
    this.http.get('http://192.168.56.144:8080/food_yue').subscribe(data=>{
      this.foods_yue = data;
      this.databases[3] = this.foods_yue;
    });
    this.http.get('http://192.168.56.144:8080/sweet_binggan').subscribe(data=>{
      this.sweet_binggan = data;
      this.databases[4] = this.sweet_binggan;
    });
    this.http.get('http://192.168.56.144:8080/sweet_buding').subscribe(data=>{
      this.sweet_buding = data;
      this.databases[5] = this.sweet_buding;
    });
    this.http.get('http://192.168.56.144:8080/sweet_cake').subscribe(data=>{
      this.sweet_cake = data;
      this.databases[6] = this.sweet_cake;
    });
  }
  changeName(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].name = e.target.value;
   }
  changeTaste(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].taste = e.target.value;
  }
  changeCollection(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].collection = e.target.value;
  }
  changePic(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].pic = e.target.value;
  }
  changeMaterial(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].material = e.target.value;
  }
  del(i,number) {
      this.http.delete('http://192.168.56.144:8080/'+this.database[number]+'/'+name+'/'+this.databases[number][i].name,{headers:this.headers}).subscribe(data => {});
    console.log(this.databases[number][i].name);
    this.databases[number].splice(i,1);
    console.log(this.database[number]);
  }
  add(i,number){
     this.http.post('http://192.168.56.144:8080/'+this.database[number],this.databases[number][i],{headers:this.headers}).subscribe(data => {
     console.log(data);
    });
    console.log(this.database[number]);
    console.log(this.databases[number][i]);
  }
  addtable1(i){
    if(i==1){
      var alter1 = document.getElementById('alert1');
      alter1.setAttribute('style','display:block'); 
    }
    if(i==2){
      var alter2 = document.getElementById('alert2');
      alter2.setAttribute('style','display:block'); 
    }
    if(i==3){
      var alter3 = document.getElementById('alert3');
      alter3.setAttribute('style','display:block'); 
    }
    if(i==4){
      var alter4 = document.getElementById('alert4');
      alter4.setAttribute('style','display:block'); 
    }
    if(i==5){
      var alter5 = document.getElementById('alert5');
      alter5.setAttribute('style','display:block'); 
    }
    if(i==6){
      var alter6 = document.getElementById('alert6');
      alter6.setAttribute('style','display:block'); 
    }
    if(i==7){
      var alter7 = document.getElementById('alert7');
      alter7.setAttribute('style','display:block'); 
    }
  }
  button1(num){
    if(this.input[num].name==''||this.input[num].taste==''||this.input[num].pic==''||this.input[num].collection==''||this.input[num].material==''){
      return ;
    }
    for(var i=0;i<this.databases[num].length;i++){
      if(this.input[num].name == this.databases[num][i].name){
        alert('已存在该菜品，请重新添加');
        return ;
      }
    }
    if(num==0){
       this.http.post('http://192.168.56.144:8080/'+'food_lu',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==1){
       this.http.post('http://192.168.56.144:8080/'+'food_chuan',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==2){
       this.http.post('http://192.168.56.144:8080/'+'food_su',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==3){
       this.http.post('http://192.168.56.144:8080/'+'food_yue',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==4){
       this.http.post('http://192.168.56.144:8080/'+'sweet_binggan',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==5){
       this.http.post('http://192.168.56.144:8080/'+'sweet_buding',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==6){
       this.http.post('http://192.168.56.144:8080/'+'sweet_dangao',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
     
    console.log(this.input[num]);
    window.location.reload() ;  
  }
  button2(i){
    if(i==1){
      var alter1 = document.getElementById('alert1');
      alter1.setAttribute('style','display:none'); 
    }
    if(i==2){
      var alter2 = document.getElementById('alert2');
      alter2.setAttribute('style','display:none'); 
    }
    if(i==3){
      var alter3 = document.getElementById('alert3');
      alter3.setAttribute('style','display:none'); 
    }
    if(i==4){
      var alter4 = document.getElementById('alert4');
      alter4.setAttribute('style','display:none'); 
    }
    if(i==5){
      var alter5 = document.getElementById('alert5');
      alter5.setAttribute('style','display:none'); 
    }
    if(i==6){
      var alter6 = document.getElementById('alert6');
      alter6.setAttribute('style','display:none'); 
    }
    if(i==7){
      var alter7 = document.getElementById('alert7');
      alter7.setAttribute('style','display:none'); 
    }
  }
  changeName1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].name = e.target.value;
  }
  changeTaste1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].taste = e.target.value;
  }
  changeCollection1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].collection = e.target.value;
  }
  changePic1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].pic = e.target.value;
  }
  changeMaterial1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].material = e.target.value;
  }
}
