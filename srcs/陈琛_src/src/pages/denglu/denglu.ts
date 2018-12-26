import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, App, AlertController } from 'ionic-angular';
import { TabsPage } from '../tabs/tabs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ZhucePage } from '../zhuce/zhuce';
import { ForgetMimaPage } from '../forget-mima/forget-mima';

/**
 * Generated class for the DengluPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-denglu',
  templateUrl: 'denglu.html',
})
export class DengluPage {

  users;
  usersId = [];
  usersPassword = [];
  user;
  code;
  arr=[];
  
  id;
  password:string;
  correct;
  key;
  man;
  flag:boolean;

  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController, public navParams: NavParams,public app:App) {
    this.http.get('http://192.168.30.144:8080/'+'users',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      // console.log(data);
      this.users = data;
      // console.log(this.users);
      for(var i = 0;i<this.users.length;i++){
        this.usersId[i] = data[i].id;
        this.usersPassword[i] = data[i].password;
        this.arr.push(data[i].id);
      }
      //console.log(this.usersId,this.usersPassword);
      console.log(this.arr);
    });
  }

  ionViewDidLoad() {
    //console.log('ionViewDidLoad DengluPage');
  }
  
  
  gotoZhuce(){
    this.navCtrl.push(ZhucePage);
  }
  gotoMima(){
    this.navCtrl.push(ForgetMimaPage);
  }
  change02(){
    for(var i in this.usersId){
      if(this.usersId[i] == this.id){
        this.code = this.usersPassword[i];
        //console.log(this.code)
      }
    }
    var NO = this.usersId.indexOf(this.id);
    this.user = this.users[NO];
    console.log(this.user);
    this.man = String(this.user.id)+'/'+String(this.user.name)+'/'+String(this.user.password)+'/'+String(this.user.mibao);  
  }
  test(){
    this.flag=false;
    for(var i=0;i<this.arr.length;i++){
      if(this.arr[i].match(this.id)){
        this.flag=true;
        break;
      }else{
        this.flag=false;
      }
    }
    if(this.flag==false){
      const alert = this.alertCtrl.create({
        subTitle: "该用户不存在！请注册！",
        buttons: ['OK']
        });
      alert.present();
    }
  }
  change(e){
    if(this.usersId.indexOf(this.id)&& this.password == this.code && this.correct){
      e.target.parentNode.parentNode.removeChild(this.correct);
      
    }else if(!this.usersId.indexOf(this.id) || this.password != this.code){
      
      if(!this.correct && this.password != this.code){
        this.correct = document.createTextNode('账号与密码不符！');
        e.target.parentNode.parentNode.appendChild(this.correct);
      }
        
      
    }
  }

  gotoroot(){
    for(var i in this.usersId){
      if(this.usersId[i] == this.id){
        this.code = this.usersPassword[i];
      }
    }
    if(this.password == this.code && this.code){
      this.navCtrl.push(TabsPage, this.user);
      this.key = localStorage.setItem('key','ok');
      this.man = localStorage.setItem('man',this.man);
    }
  }
}
