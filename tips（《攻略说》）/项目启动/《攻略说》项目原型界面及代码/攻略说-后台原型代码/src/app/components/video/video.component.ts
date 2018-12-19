import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router' ;
import { HttpClient } from '@angular/common/http';
import {  HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'app-video',
  templateUrl: './video.component.html',
  styleUrls: ['./video.component.css']
})
export class VideoComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});
  constructor(private http: HttpClient,private router:ActivatedRoute) { }
  
  movies1;
  movies2;
  movies3;
  moviesRoles;
  database=['movies1',
    'movies2',
    'movies3',
    'moviesRoles' ];
  databases = [];
  input=[
    {
      name:'',
      sco:'',
      img:'',
      intro:'',
      actor:''
    },{
      name:'',
      sco:'',
      img:'',
      intro:'',
      actor:''
    },{
      name:'',
      sco:'',
      img:'',
      intro:''
    }]
  changeName(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].name = e.target.value;
   }
   changeName1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].name = e.target.value;
   }
   changeSco(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].moviesSco = e.target.value;
   }
   changeSco1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].sco = e.target.value;
   }
  changeImg(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].moviesImg = e.target.value;
  }
  changeImg1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].img = e.target.value;
  }
  changeIntro(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].moviesIntro = e.target.value;
  }
  changeIntro1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].intro = e.target.value;
  }
  changeRolesid(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].rolesId = e.target.value;
  }
  changeMoviestime(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].moviesTime = e.target.value;
  }
  changeRolesname(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].rolesName = e.target.value;
  }
  changeRolesactor(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].rolesActor = e.target.value;
  }
  changeRolesactor1(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.input[i].actor = e.target.value;
  }
  changeRolesintro(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].rolesIntro = e.target.value;
  }
  changeRolesimg(e, i,number) {
    // tslint:disable-next-line:no-unused-expression
    this.databases[number][i].rolesImg = e.target.value;
  }

  ngOnInit() {
    this.http.get('http://192.168.56.144:8080/movies1').subscribe(data=>{
      this.movies1 = data;
      this.databases[0]=this.movies1;
    });
    this.http.get('http://192.168.56.144:8080/movies2').subscribe(data=>{
      this.movies2 = data;
      this.databases[1]=this.movies2;
    });
    this.http.get('http://192.168.56.144:8080/movies3').subscribe(data=>{
      this.movies3 = data;
      this.databases[2]=this.movies3;
    });
    this.http.get('http://192.168.56.144:8080/moviesRoles').subscribe(data=>{
      this.moviesRoles = data;
      this.databases[3]=this.moviesRoles;
    });
  }
  del(i,number) {
    // this.http.delete('http://192.168.148.144:8080/'+this.database[number]+'/'+name+'/'+this.databases[number][i].name,{headers:this.headers}).subscribe(data => {});
    if(number<3){
      console.log(this.databases[number][i].moviesName);
      console.log(this.database[number]);
    }else{
      console.log(this.databases[number][i].rolesId);
      console.log(this.database[number]);
    }
    this.databases[number].splice(i,1);
  }
  add(i,number){
    // this.http.post('http://192.168.148.144:8080/'+this.database[number],this.databases[number][i],{headers:this.headers}).subscribe(data => {
    //   console.log(data);
    // });
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
  }
  button1(num){
    if(this.input[num].name==''||this.input[num].img==''||this.input[num].sco==''||this.input[num].intro==''||this.input[num].actor==''){
      return ;
    }
    for(var i=0;i<this.databases[num].length;i++){
      if(this.input[num].name == this.databases[num][i].name){
        alert('已存在该电影，请重新添加');
        return ;
      }
    }
    if(num==0){
      // this.http.post('http://192.168.148.144:8080/'+'movies1',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==1){
      // this.http.post('http://192.168.148.144:8080/'+'movies2',this.input[num],{headers:this.headers}).subscribe(data => {});
    }
    if(num==2){
      // this.http.post('http://192.168.148.144:8080/'+'movies3',this.input[num],{headers:this.headers}).subscribe(data => {});
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
  }
}