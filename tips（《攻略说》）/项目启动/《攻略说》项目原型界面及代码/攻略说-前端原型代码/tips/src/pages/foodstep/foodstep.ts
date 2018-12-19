import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import {NgModule } from '@angular/compiler/src/core';
import { AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
/**
 * Generated class for the FoodstepPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-foodstep',
  templateUrl: 'foodstep.html',
})
export class FoodstepPage {
  headers=new HttpHeaders({
		'Content-Type': 'application/x-www-form-urlencoded'
	});
  all;allsweet;stepnames;steppics;stepcontents;
  lus;chuans;sus;yues;
  food;
  foodreal={
    foodname:'',
    foodpic:'',
  };
  fmas=[];
  step;
  items=[];
  
  man: string;
  user: string[];
  ids=[];
  id;
  userid: string;
  username:string;
  pinglunname;
  pinglunpic;
  time;
  isno=true;
  allcomments;//所有评论
  foodcomment;//此次评论
  foodcomments=[];//本道菜的所有评论
  loves=[];
  love = {
    id:"",
    name:"",
  };
  shoucang(){
		this.love.id = this.userid;
    this.love.name = this.foodreal.foodname;
    /////////////////////////////////////////////////////////////////////////////
    this.http.get('http://192.168.56.144:8080/'+'shoucang_food',{
    headers:new HttpHeaders({
    }),
  }).subscribe((data) => { // 监听
    for(var j in data){
      this.loves[j] = data[j].name;
    }
    if(this.loves.indexOf(this.foodreal.foodname)>-1){
      const alert = this.alertCtrl.create({
        title: 'Hi Friend!',
        subTitle: '您已经收藏过了!',
        buttons: ['OK']
      });
      alert.present();
    }else{
      	this.http.post('http://192.168.56.144:8080/'+'shoucang_food',this.love,
          {headers:this.headers}).subscribe((data) => {});
          console.log(this.love)
          const alert = this.alertCtrl.create({
            title: 'Hi Friend!',
            subTitle: '收藏成功!',
            buttons: ['OK']
          });
          alert.present();
    }
  });
  }

  constructor(public navCtrl: NavController, public navParams: NavParams,public alertCtrl: AlertController,public http:HttpClient) {
    this.man = localStorage.getItem('man');
    // console.log(this.man);
		this.user = this.man.split('/');
		// console.log(this.user);
    this.userid = this.user[0];
    this.username=this.user[1];
    this.pinglunname=navParams.data;
    
    
    this.foodcomment={
      id:'',
      name:'',
      pic:'',
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:'',
      time:''
    };

    this.http.get('http://192.168.56.144:8080/'+'food_step',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.all=data;
      for(var i=0;i<this.all.length;i++){
      if(this.all[i].name==navParams.data){
        this.step=this.all[i];
      }
    }
    // console.log(this.step);
    //步骤名、步骤图片、步骤内容分成数组
        this.stepnames =this.step.stepnames.split(";");
        this.steppics=this.step.steppics.split(";");
        this.stepcontents =this.step.stepcontents.split(";");
    //所有步骤push到
        for(var i=0;i<this.stepnames.length;i++){
          this.items.push({
            stepname:this.stepnames[i],
            steppic:this.steppics[i],
            stepcontent:this.stepcontents[i],
          })
        }



    });
     
    this.http.get('http://192.168.56.144:8080/'+'food_lu',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.lus=data;
      for(var i=0;i<this.lus.length;i++){
        if(this.lus[i].name==navParams.data){
          this.food=this.lus[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      this.pinglunpic=this.foodreal.foodpic;
    });

    this.http.get('http://192.168.56.144:8080/'+'food_chuan',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.chuans=data;
      
      for(var i=0;i<this.chuans.length;i++){
        if(this.chuans[i].name==navParams.data){
          this.food=this.chuans[i];
        }
      }
     this.foodreal.foodname=Object(this.food).name;
     this.foodreal.foodpic=Object(this.food).pic;
     this.fmas=this.food?this.food.material.split(";"):[];
     this.pinglunpic=this.foodreal.foodpic;
   });
      
  

    this.http.get('http://192.168.56.144:8080/'+'food_su',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.sus=data;
      for(var i=0;i<this.sus.length;i++){
        if(this.sus[i].name==navParams.data){
          this.food=this.sus[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      this.pinglunpic=this.foodreal.foodpic;
    });

    this.http.get('http://192.168.56.144:8080/'+'food_yue',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.yues=data;
      for(var i=0;i<this.yues.length;i++){
        if(this.yues[i].name==navParams.data){
          this.food=this.yues[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      this.pinglunpic=this.foodreal.foodpic;
    });
   
    // 请求评论
    this.http.get('http://192.168.56.144:8080/'+'food_comment',{
    headers:new HttpHeaders({})
  }).subscribe((data)=>{
    this.allcomments=data;
    
    for(var i=0;i<this.allcomments.length;i++){
      if(this.allcomments[i].name==navParams.data){
        this.foodcomments.push(this.allcomments[i]);     
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

  submit(){
    var mypl=document.getElementsByTagName('textarea')[0];
    this.id++;
    this.time=(new Date().toLocaleDateString());
    if(Boolean(mypl.value)!=false){
      console.log(this.pinglunpic);
      this.foodcomment={
      id:this.id,
      name:this.pinglunname,
      pic:this.pinglunpic,
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:mypl.value,
      time:this.time
      }
      this.foodcomments.push(this.foodcomment);
      this.http.post('http://192.168.56.144:8080/'+'food_comment',this.foodcomment,
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
    if(this.foodcomments.length!=0){
      this.isno=false;
    }
  }

  ionViewDidEnter() {
    if(this.foodcomments.length!=0){
      this.isno=false;
    }
   
  }











 

}
