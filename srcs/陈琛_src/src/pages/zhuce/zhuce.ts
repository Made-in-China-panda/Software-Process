import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { DengluPage } from '../denglu/denglu';

/**
 * Generated class for the ZhucePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-zhuce',
  templateUrl: 'zhuce.html',
})
export class ZhucePage {
  users;
  usersId = [];
  correct: Text;
  

  constructor(private http: HttpClient,public navCtrl: NavController, public navParams: NavParams,
    public alertCtrl:AlertController) {
    this.http.get('http://192.168.30.144:8080/'+'users',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      this.users = data;
      //console.log(this.users);
      for(var i = 0;i<this.users.length;i++){
        this.usersId[i] = data[i].id;
      }
      //console.log(this.usersId);
    });
  }
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });

  ionViewDidLoad() {
  }
  backtoDenglu(){
    this.navCtrl.pop();
  }

  name: any;
  count:string;
  password:string;
  gender:string;
  answer:string;
  
  man={
    name:null,
    id:null,
    password:null,
    mibao:"",
    age:"",
    birthday:"",
    style:"",
  };
//验证账号是否已被注册
  changeId(e){
    if(this.usersId.indexOf(String(this.count))>-1){
      this.correct = document.createTextNode('账号已被占用！');
      e.target.parentNode.appendChild(this.correct);
    }else{
      if(this.correct){
        e.target.parentNode.removeChild(this.correct);
      }
    }
  }

  adduser(){
    var reg=/^1[0-9]{10}$/;
    if(reg.test(this.count)){
      console.log(this.answer);
      if(this.answer == undefined){
        const alert = this.alertCtrl.create({
          subTitle: "请将答案补充完整！",
          buttons: ['OK']
          });
        alert.present();
      }else{
        this.man.name=this.name;
        this.man.id=this.count;
        
        this.man.password=this.password;
        this.man.mibao=this.gender+'/'+this.answer;
        //console.log(this.man);
      }
      if(this.man.name && this.man.id && this.man.password && this.man.mibao){
        this.http.post('http://192.168.30.144:8080/'+'users',this.man,
        {headers:this.headers}).subscribe((data) => {});
      }
      this.navCtrl.push(DengluPage);
    }else{
      const alert1 = this.alertCtrl.create({
        subTitle: "手机号码输入不正确！",
        buttons: ['OK']
        });
      alert1.present();
    }
  }    
    
}
