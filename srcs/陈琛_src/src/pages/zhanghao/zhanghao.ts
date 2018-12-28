import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { MimaPage } from '../mima/mima';
import { ShezhiPage } from '../shezhi/shezhi';
import { HttpClient, HttpHeaders } from '@angular/common/http';

/**
 * Generated class for the ZhanghaoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-zhanghao',
  templateUrl: 'zhanghao.html',
})
export class ZhanghaoPage {
  man: string;
  id;
  people;
  user;
  userid;
  gender;
  age;
  style;
  nickname;
  users: any;
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });

  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
    this.http.get('http://192.168.30.144:8080/'+'users',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            this.users = data;
            for(var i in this.users){
              if(this.users[i].id == this.userid){
                this.people = this.users[i];
                console.log(this.people)
                break;
              }
            }
            /////////////////////////////////////////////////////
            if(this.people.age == '男'){
              this.gender = '男';
            }else if(this.people.age == '女'){
              this.gender = '女';
            }else{
              this.gender = 'secret';
            }
            //////////////////////////////////////////////////////
            if(this.people.birthday==""){
              this.age = '保密';
            }else{
              this.age = Number(this.people.birthday)
            }
            //////////////////////////////////////////////////////
            this.style = this.people.style;
            this.nickname = this.people.name;
            //console.log(this.users);
          });
          
          
  }

  ionViewDidLoad() {
    this.man = localStorage.getItem('man');
    this.user = this.man.split('/');
    this.userid = this.user[0];
  }

  test(){
    console.log(this.age);
    var reg=/^([0-9]|[0-9]{2}|100)$/;
    if(!reg.test(this.age)){
      const alert = this.alertCtrl.create({
        subTitle: "请输入数字！",
        buttons: ['OK']
        });
      alert.present();
    }
  }
  // 暂时先自己定义的id
  baocun(){
    this.people.name = this.nickname;
    this.people.age = this.gender;
    this.people.birthday = this.age;
    this.people.style = this.style;
    console.log(this.people);
    this.http.delete('http://192.168.30.144:8080/'+'users'+'/id/'+this.people.id,
      {headers:this.headers}).subscribe(data => {console.log('5')});
      this.http.post('http://192.168.30.144:8080/'+'users',this.people,
        {headers:this.headers}).subscribe((data) => {});
        const alert = this.alertCtrl.create({
          title: 'Hi Friend!',
          subTitle: '保存成功',
          buttons: ['OK']
          });
        alert.present();
  } 
      
  shezhi(){
    this.navCtrl.push(ShezhiPage);
  }
  
  gotomima(){
    this.navCtrl.push(MimaPage);
  }
}