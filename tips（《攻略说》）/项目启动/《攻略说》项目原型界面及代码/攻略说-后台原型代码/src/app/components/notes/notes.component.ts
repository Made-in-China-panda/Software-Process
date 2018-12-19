import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-notes',
  templateUrl: './notes.component.html',
  styleUrls: ['./notes.component.css']
})
export class NotesComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});
  constructor(private http: HttpClient) { }
  
  food_comment;
  movie_comment;
  database=['food_comment','movie_comment'];
  input = [{
    id:'',
    name:'',
    userId:'',
    userName:'',
    userHead:'',
    content:'',
    time:''
  },{
    id:'',
    name:'',
    userId:'',
    userName:'',
    userHead:'',
    content:'',
    time:''
  }];
  databases=[];
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  addtable(){
    var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:block');
    
  }
  addtable1(){
    var alter1 = document.getElementById('alert2');
    alter1.setAttribute('style','display:block'); 
  }
  button1(num){
    if(this.input[num].id==""||this.input[num].name==""||this.input[num].userId==""||this.input[num].userHead==""||this.input[num].userName==""||this.input[num].content==""||this.input[num].time==""){
      return ;
    }
    
    for(var i=0;i<this.databases[num].length;i++){
      if(this.input[num].id == this.databases[num][i].id){
        alert('请输入正确的序号');
        return ;
      }
    }
    if(num == 0){
      // this.http.post('http://192.168.148.144:8080/'+'food_comment',this.input[num],{headers:this.headers}).subscribe(data => {});
      console.log(this.input[num]);
    }
    if(num == 1){
      // this.http.post('http://192.168.148.144:8080/'+movie_comment,this.input[num],{headers:this.headers}).subscribe(data => {});
      console.log(this.input[num]);
    }
    
    window.location.reload() ;  
  }
  button2(){
      var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:none');
  }
  button3(){
      var alter1 = document.getElementById('alert2');
    alter1.setAttribute('style','display:none');
  }
  changeId(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].id = e.target.value;
   }
  changeId1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].id = e.target.value;
  }
  changeName(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].name = e.target.value;
  }
  changeName1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].name = e.target.value;
  }
  changeUsername(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].userName = e.target.value;
  }
  changeUsername1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].userName = e.target.value;
  }
  changeUserhead(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].userHead = e.target.value;
  }
  changeUserhead1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].userHead = e.target.value;
  }
  changeContent(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].content = e.target.value;
  }
  changeContent1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].content = e.target.value;
  }
  changeTime(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].time = e.target.value;
  }
  changeTime1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].time = e.target.value;
  }
  changeUserid(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].userId = e.target.value;
  }
  changeUserid1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[number].userId = e.target.value;
  }
  ngOnInit() {
    this.http.get('http://192.168.56.144:8080/food_comment').subscribe(data=>{
      this.food_comment = data;
      this.databases[0]=this.food_comment;
    });
    this.http.get('http://192.168.56.144:8080/movie_comment').subscribe(data=>{
      this.movie_comment = data;
      this.databases[1]=this.movie_comment;
    });
  }
  del(i, number) {
     // tslint:disable-next-line:max-line-length
     this.http.delete('http://192.168.56.144:8080/' + this.database[number] + '/' + 'id' +'/'+this.databases[number][i].id,{headers:this.headers}).subscribe(data => {});
    console.log(this.databases[number][i].id);
    console.log(this.database[number]);
    this.databases[number].splice(i, 1);
  }
  add(i,number){
     // tslint:disable-next-line:max-line-length
     this.http.post('http://192.168.56.144:8080/'+this.database[number],this.databases[number][i],{headers:this.headers}).subscribe(data => {
       console.log(data);
     });
    console.log(this.database[number]);
    console.log(this.databases[number][i]);
  }
}
