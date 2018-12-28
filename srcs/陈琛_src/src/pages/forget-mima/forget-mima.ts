import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';

/**
 * Generated class for the ForgetMimaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-forget-mima',
  templateUrl: 'forget-mima.html',
})
export class ForgetMimaPage {

 ionViewDidLoad() {
    //console.log('ionViewDidLoad ForgetMimaPage');
  }

  arr=[];
  users;
  userId = [];
  count:string;
  answer:string;
  user;
  text='输入账号获取密保问题';
  correct;
  flag:boolean;

  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
    this.http.get('http://192.168.30.144:8080/'+'users',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      this.users = data;
      for(var i in this.users){
        this.arr.push(this.users[i].id);
        this.userId[i] = this.users[i].id;
      }
    });
  }

  change(){
    var i = this.userId.indexOf(this.count);
    this.user = this.users[i]
    this.text = this.user.mibao.split('/')[0];
  }
  test(){
    this.flag=false;
    for(var i=0;i<this.arr.length;i++){
      if(this.arr[i].match(this.count)){
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
  back(e){
    if(this.count === this.user.id && this.answer == this.user.mibao.split('/')[1]){
      if(!this.correct){
        this.correct = document.createTextNode('您的密码是：'+this.user.password);
        e.target.parentNode.parentNode.appendChild(this.correct);
      }
    }else{
      const alert = this.alertCtrl.create({
        title: 'Hi Friend!',
        subTitle: '账号或密保答案错误',
        buttons: ['OK']
        });
        alert.present();
    }
  }
}
