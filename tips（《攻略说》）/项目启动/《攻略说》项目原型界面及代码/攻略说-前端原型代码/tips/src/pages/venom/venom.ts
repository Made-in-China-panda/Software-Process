import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { AlertController } from 'ionic-angular';

/**
 * Generated class for the VenomPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-venom',
  templateUrl: 'venom.html',
})
export class VenomPage {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });
  movies;
  movie={
    moviesName:"",
  };
  roles;
  role=[];
  love = {
    id:"",
    name:"",
  }
  man: string;
  user: string[];
  userid: string;

  id;
  ids=[];
  time;
  pinglunpic;
  moviecomment;
  pinglunname;

  username;
  moviecomments=[];

  
  allcomments;
  isno=true;
  loves = [];
  shoucang(){
		this.love.id = this.userid;
    this.love.name = this.movie.moviesName;
    /////////////////////////////////////////////////////////////////////////////
    this.http.get('http://192.168.56.144:8080/'+'shoucang_movie',{
    headers:new HttpHeaders({
    }),
  }).subscribe((data) => { // 监听
    for(var j in data){
      this.loves[j] = data[j].name;
    }
    if(this.loves.indexOf(this.movie.moviesName)>-1){
      const alert = this.alertCtrl.create({
        title: 'Hi Friend!',
        subTitle: '您已经收藏过了',
        buttons: ['OK']
      });
      alert.present();
    }else{
      	this.http.post('http://192.168.56.144:8080/'+'shoucang_movie',this.love,
          {headers:this.headers}).subscribe((data) => {});
          console.log(this.love)
          const alert = this.alertCtrl.create({
            title: 'Hi Friend!',
            subTitle: '收藏成功',
            buttons: ['OK']
          });
          alert.present();
    }
  });
  ///////////////////////////////////////////////////////////////////////////
     
  }
  submit1(){
    var mypl=document.getElementsByTagName('textarea')[0];
    this.id++;
    this.time=(new Date().toLocaleDateString());
    if(Boolean(mypl.value)!=false){
      console.log(this.pinglunpic);
      this.moviecomment={
      id:this.id,
      name:this.pinglunname,
      pic:this.pinglunpic,
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:mypl.value,
      time:this.time
      }
      console.log(this.moviecomment,this.id);
      this.moviecomments.push(this.moviecomment);
      this.http.post('http://192.168.56.144:8080/'+'movie_comment',this.moviecomment,
            {headers:this.headers}).subscribe((data) => {});
    }
     else {
        const alert = this.alertCtrl.create({
          title: 'Hi Friend!',  
          subTitle: '评论不能为空!',
          buttons: ['OK']
        });
        alert.present();
     
    }
    mypl.value='';
    if(this.moviecomments.length!=0){
      this.isno=false;
    }
  }
  ionViewDidEnter() {
    if(this.moviecomments.length!=0){
      this.isno=false;
    }
  }
  constructor(public alertCtrl:AlertController,public navCtrl: NavController, public navParams: NavParams,public http:HttpClient) {
    this.man = localStorage.getItem('man');
      // console.log(this.man);
      this.user = this.man.split('/');
      // console.log(this.user);
      this.userid = this.user[0];
      this.username=this.user[1];
      this.pinglunname=navParams.data;

    this.moviecomment={
      id:'',
      name:'',
      pic:'',
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:'',
      time:''
    };
    this.http.get('http://192.168.56.144:8080/'+'movies1',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies=data;
          for(var i=0;i<this.movies.length;i++){
            if(this.movies[i].moviesName==navParams.data){
             this.movie=this.movies[i];
             this.pinglunpic=this.movies[i].moviesPic
            //  console.log(this.movie);
            }
          }
        });
      this.http.get('http://192.168.56.144:8080/'+'movies2',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            this.movies=data;
            for(var i=0;i<this.movies.length;i++){
              if(this.movies[i].moviesName==navParams.data){
               this.movie=this.movies[i];
               this.pinglunpic=this.movies[i].moviesPic
              }
            }
          });
      this.http.get('http://192.168.56.144:8080/'+'movies3',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies=data;
          for(var i=0;i<this.movies.length;i++){
            if(this.movies[i].moviesName==navParams.data){
             this.movie=this.movies[i];
            this.pinglunpic=this.movies[i].moviesPic
            }
          }
        });
      this.http.get('http://192.168.56.144:8080/'+'moviesRoles',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.roles=data;
          // console.log(this.roles);
          for(var i=0;i<this.roles.length;i++){
            // console.log(this.roles[i]);
            if(this.roles[i].name==navParams.data){
              this.role.push(this.roles[i]);
              console.log(this.role)
            }
          }
        });
        // 请求评论
     this.http.get('http://192.168.56.144:8080/'+'movie_comment',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.allcomments=data;
      for(var i=0;i<this.allcomments.length;i++){
        if(this.allcomments[i].name==navParams.data){
          this.moviecomments.push(this.allcomments[i]);     
        }
      }
       // 设置评论id
    if(this.allcomments.length==0){
      this.ids=[];
    }
    else{
      for(var i=0;i<this.allcomments.length;i++){
      this.ids.push(Number(this.allcomments[i].id));
      }
    }

    this.id=Math.max.apply(null,this.ids)==-Infinity?0:Math.max.apply(null,this.ids);
        });

	
        }
}
