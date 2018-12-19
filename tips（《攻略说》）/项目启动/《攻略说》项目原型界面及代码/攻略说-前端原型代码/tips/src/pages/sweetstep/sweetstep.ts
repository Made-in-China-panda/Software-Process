import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { AlertController } from 'ionic-angular';
/**
 * Generated class for the SweetstepPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-sweetstep',
  templateUrl: 'sweetstep.html',
})
export class SweetstepPage {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
});
  allsweet;stepnames;steppics;stepcontents;
  sweetstep;
  foodreal={
    foodname:'',
    foodpic:'',
  };
  fmas=[];
  items=[];
  cakes;budings;binggans;
  food;

man: string;
user: string[];
id;
userid: string;
username:string;
pinglunname;
time;
allcomments;
foodcomment;
foodcomments=[];
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
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:'',
      time:''
    };



    this.http.get('http://192.168.56.144:8080/'+'sweet_step',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.allsweet=data;
      for(var i=0;i<this.allsweet.length;i++){
      if(this.allsweet[i].name==navParams.data){
        this.sweetstep=this.allsweet[i];
      }
    }
    // console.log(this.sweetstep);
    //步骤名、步骤图片、步骤内容分成数组
        this.stepnames =this.sweetstep.stepnames.split(";");
        this.steppics= this.sweetstep.steppics.split(";");
        this.stepcontents = this.sweetstep.stepcontents.split(";");
        // console.log(this.stepnames);
    //所有步骤push到
        for(var i=0;i<this.stepnames.length;i++){
          this.items.push({
            stepname:this.stepnames[i],
            steppic:this.steppics[i],
            stepcontent:this.stepcontents[i],
          })
        }

    });


    this.http.get('http://192.168.56.144:8080/'+'sweet_cake',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.cakes=data;
      for(var i=0;i<this.cakes.length;i++){
        if(this.cakes[i].name==navParams.data){
          this.food=this.cakes[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      
    });

    this.http.get('http://192.168.56.144:8080/'+'sweet_buding',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.budings=data;
      for(var i=0;i<this.budings.length;i++){
        if(this.budings[i].name==navParams.data){
          this.food=this.budings[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      
    });

    this.http.get('http://192.168.56.144:8080/'+'sweet_binggan',{
      headers:new HttpHeaders({})
    }).subscribe((data)=>{
      this.binggans=data;
      for(var i=0;i<this.binggans.length;i++){
        if(this.binggans[i].name==navParams.data){
          this.food=this.binggans[i];
        }
      }
      this.foodreal.foodname=Object(this.food).name;
      this.foodreal.foodpic=Object(this.food).pic;
      this.fmas=this.food?this.food.material.split(";"):[];
      
    });

    // 请求评论
    this.http.get('http://192.168.56.144:8080/'+'food_comment',{
    headers:new HttpHeaders({})
  }).subscribe((data)=>{
    this.allcomments=data;
    this.id=Number(this.allcomments.length);
    for(var i=0;i<this.allcomments.length;i++){
      if(this.allcomments[i].name==navParams.data){
        this.foodcomments.push(this.allcomments[i]);     
      }
    }
  });



  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad SweetstepPage');
  }


  
  submit(){
    var mypl=document.getElementsByTagName('textarea')[0];
    this.id++;
    this.time=(new Date().toLocaleDateString());
    if(Boolean(mypl.value)!=false){
      
      this.foodcomment={
      id:this.id,
      name:this.pinglunname,
      userid:this.userid,
      userName:this.username,
      userhead:'assets/imgs/logo.png',
      content:mypl.value,
      time:this.time
      }
      this.foodcomments.push(this.foodcomment);
      this.http.post('http://192.168.56.144:8080/'+'food_comment',this.foodcomment,
            {headers:this.headers}).subscribe((data) => {});
            console.log(this.foodcomment);   
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
  
  }



}
