import { Component, OnInit } from '@angular/core';
import { HttpClient,HttpParams } from '@angular/common/http';
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});

  constructor(private http: HttpClient) { }
  // tslint:disable-next-line:member-ordering

  users;
  newUser: any;
  key;
  input = {
    id:"",
    name:"",
    password:"",
    mibao:""
  };
  addtable(){
    var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:block');
    
  }
  res;
  res1(i){
    console.log(i);
    this.res = i;
  }
  button1(num){
    console.log(this.res);
    this.input.mibao = this.res+'/'+this.input.mibao;
    console.log(this.input.mibao);
    
    if(this.input.id==''||this.input.name==''||this.input.password==''||this.input.mibao==''){
      return ;
    }
    for(var i=0;i<this.users.length;i++){
      if(this.input.id == this.users[i].id){
        alert('已存在该用户，请重新添加');
        return ;
      }
    }
    // this.http.post('http://192.168.148.144:8080/'+'users',this.input,{headers:this.headers}).subscribe(data => {});
    console.log(this.input);
    window.location.reload() ;  
  }
  
  button2(){
    var alter1 = document.getElementById('alert1');
    alter1.setAttribute('style','display:none');
  }
  changeId1(e, i,number) {
    
    this.input.id = e.target.value;
  }
  changeName1(e, i,number) {
    
    this.input.name = e.target.value;
  }
  changeUsername1(e, i,number) {
    
    this.input.password = e.target.value;
  }
  changeUserhead1(e, i,number) {
    
    this.input.mibao = e.target.value;
  }
  del(i) {
    // this.http.delete('http://192.168.148.144:8080/users/id/'+this.users[i].id,{headers:this.headers}).subscribe(data => {});
    
    
    this.key = i;
    console.log(i);
    console.log(this.users[i]);
    this.users.splice(i,1);
  }
  add(i) {
    // console.log(this.users[i]);
    // this.http.post('http://192.168.148.144:8080/users',this.users[i],{headers:this.headers}).subscribe(data => {
    //   console.log(data);
    // });
    console.log(this.users[i]);
      
  }
  changeId(e, i) {
   // tslint:disable-next-line:no-unused-expression
   this.users[i].id = e.target.value;
  }
  changeName(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].name = e.target.value;
   }
   changeStyle(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].mibao = e.target.value;
   }
   changeBrithday(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].brithday = e.target.value;
   }

  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  ngOnInit() {
    this.http.get('http://192.168.148.144:8080' + '/users').subscribe((data) => { // 监听
          this.users = data;
          console.log(this.users);
        });
  }

}
