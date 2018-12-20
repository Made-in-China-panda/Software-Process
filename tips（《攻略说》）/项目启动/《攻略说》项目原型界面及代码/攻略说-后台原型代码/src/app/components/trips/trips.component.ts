import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-trips',
  templateUrl: './trips.component.html',
  styleUrls: ['./trips.component.css']
})
export class TripsComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});
  constructor(private http: HttpClient) { }
  sichuan;
  shandong;
  neimeng;
  xianggang;
  xizang;
  databases=[];
  database=[
    'sichuan',
  'shandong',
  'neimeng',
  'xianggang',
  'xizang' 
  ];
  input=[
    {
    name:'',
    pic:'',
    wheres:'',
    h1:'',
    content:''
  },{
    name:'',
    pic:'',
    wheres:'',
    h1:'',
    content:''
  },{
    name:'',
    pic:'',
    wheres:'',
    h1:'',
    content:''
  },{
    name:'',
    pic:'',
    wheres:'',
    h1:'',
    content:''
  },{
    name:'',
    pic:'',
    wheres:'',
    h1:'',
    content:''
  }]
  changeName(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].name = e.target.value;
   }
   changeName1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].name = e.target.value;
   }
  changeSrc(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].src = e.target.value;
  }
  changeSrc1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].pic = e.target.value;
  }
  changeWheres(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].wheres = e.target.value;
  }
  changeWheres1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].wheres = e.target.value;
  }
  changeH1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].h1 = e.target.value;
  }
  changeH11(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].h1 = e.target.value;
  }
  changeTexts(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].texts = e.target.value;
  }
  changeTexts1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].content = e.target.value;
  }
  ngOnInit() {
    this.http.get('http://192.168.148.144:8080/sichuan').subscribe(data=>{
      this.sichuan = data;
      this.databases[0]=this.sichuan;
    });
    this.http.get('http://192.168.148.144:8080/shandong').subscribe(data=>{
      this.shandong = data;
      this.databases[1]=this.shandong;
    });
    this.http.get('http://192.168.148.144:8080/neimeng').subscribe(data=>{
      this.neimeng = data;
      this.databases[2]=this.neimeng;
    });
    this.http.get('http://192.168.148.144:8080/xianggang').subscribe(data=>{
      this.xianggang = data;
      this.databases[3]=this.xianggang;
    });
    this.http.get('http://192.168.148.144:8080/xizang').subscribe(data=>{
      this.xizang = data;
      this.databases[4]=this.xizang;
    });
  }
  del(i,number) {
    // this.http.delete('http://192.168.148.144:8080/'+this.database[number]+'/'+name+'/'+this.databases[number][i].name,{headers:this.headers}).subscribe(data => {});
    console.log(this.databases[number][i].name);
    this.databases[number].splice(i,1);
    console.log(this.database[number]);
    
  }
  add(i,number) {
    // this.http.post('http://192.168.148.144:8080/'+this.database[number],this.databases[number][i],{headers:this.headers}).subscribe(data => {
    //   console.log(data);
    // });
    console.log(this.database[number]);
    console.log(this.databases[number][i]);
  }
  button1(num){
    if(this.input[num].name==''||this.input[num].h1==''||this.input[num].pic==''||this.input[num].wheres==''||this.input[num].content==''){
      return ;
    }
    for(var i=0;i<this.databases[num].length;i++){
      if(this.input[num].name == this.databases[num][i].name){
        alert('已存在该位置，请重新添加');
        return ;
      }
    }
    if(num==0){
      // this.http.post('http://192.168.148.144:8080/'+'sichuan',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==1){
      // this.http.post('http://192.168.148.144:8080/'+'shandong',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==2){
      // this.http.post('http://192.168.148.144:8080/'+'neimeng',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==3){
      // this.http.post('http://192.168.148.144:8080/'+'xianggang',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==4){
      // this.http.post('http://192.168.148.144:8080/'+'xizang',this.input[num],{headers:this.headers}).subscribe(data => {});
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
  }
}