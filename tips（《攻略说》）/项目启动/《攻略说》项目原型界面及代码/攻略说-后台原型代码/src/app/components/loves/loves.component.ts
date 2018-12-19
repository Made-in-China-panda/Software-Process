import { Component, OnInit } from '@angular/core';
import { HttpClient,HttpParams } from '@angular/common/http';
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-loves',
  templateUrl: './loves.component.html',
  styleUrls: ['./loves.component.css']
})
export class LovesComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});
  users: any;
  constructor(private http: HttpClient) { }
  loves;
  input={
    id:'',
    name:''
  }
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  del(i) {
     this.http.delete('http://192.168.56.144:8080/shoucang/id/'+this.loves[i].id,{headers:this.headers}).subscribe(data => {});
    console.log(this.loves[i].id);
    this.loves.splice(i,1);
  }
  add(i) {
     //console.log(this.users[i]);
     this.http.post('http://192.168.56.144:8080/shoucang',this.loves[i],{headers:this.headers}).subscribe(data => {
       console.log(data);
     });
    console.log(this.loves[i]);
      
  }
  changeId(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.loves[i].id = e.target.value;
   }
  changeId1(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.input.id = e.target.value;
  } 
  changeName(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.loves[i].name = e.target.value;
   }
  changeName1(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.input.name = e.target.value;
  } 
  ngOnInit() {
    this.http.get('http://192.168.56.144:8080' + '/shoucang').subscribe((data) => { // 监听
          this.loves = data;
          console.log(this.loves);
        });
  }
  addtable1(){
    var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:block'); 
  }
  button1(num){
    if(this.input.id==''||this.input.name==''){
      return ;
    }
    for(var i=0;i<this.loves.length;i++){
      if(this.input.id == this.loves[i].id){
        alert('已存在该用户，请重新添加');
        return ;
      }
    }
      this.http.post('http://192.168.56.144:8080/'+'shoucang',this.input,{headers:this.headers}).subscribe(data => {});
    console.log(this.input);
    window.location.reload() ;  
  }
  button2(){
    var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:none');
  }
}
