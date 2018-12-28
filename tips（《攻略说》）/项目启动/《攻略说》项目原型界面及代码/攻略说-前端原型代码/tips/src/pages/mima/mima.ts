import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { DengluPage } from '../denglu/denglu';

/**
 * Generated class for the MimaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-mima',
  templateUrl: 'mima.html',
})
export class MimaPage {
  man: string;
  user: string[];
  olduser;
  userid: string;
  users;
  key;
  correct: Text;
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });

  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    
    this.man = localStorage.getItem('man');
    this.user = this.man.split('/');
    this.userid = this.user[0];
    //console.log(this.userid);

    this.http.get('http://192.168.56.144:8080/'+'users',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        //console.log(data);
        this.users = data;
        for(var i in this.users){
          if(this.userid == this.users[i].id){
            this.olduser = this.users[i]
          }
        }
        //console.log(this.olduser)
    });
    
    

  }

  
  password1:string;
  password2:string;
  count:string;
  back(e){
    //console.log(this.key);
    if(this.key == this.olduser.password){
      if(this.correct){
        e.target.parentNode.parentNode.removeChild(this.correct);
      }
      if(this.password1 === this.password2 && this.password1!=undefined){
        this.olduser.password = this.password1;
        this.http.delete('http://192.168.56.144:8080/'+'users'+'/id/'+this.olduser.id,
        {headers:this.headers}).subscribe(data => {console.log('5')});
        this.http.post('http://192.168.56.144:8080/'+'users',this.olduser,
          {headers:this.headers}).subscribe((data) => {});
            
          const alert = this.alertCtrl.create({
            title: 'Hi Friend!',
            subTitle: '请重新登录',
            buttons: ['OK']
            });
            alert.present();
        
        


        this.navCtrl.push(DengluPage);
        this.key = localStorage.setItem('key','no');
        this.key = localStorage.setItem('man',' ');
      } else if(this.password1==undefined){
        alert("新密码不可为空");
      }else {
        alert("俩次密码输入不一致！");
      }
    }else{
      if(!this.correct){
        this.correct = document.createTextNode('密码与当前账号不符！');
        e.target.parentNode.parentNode.appendChild(this.correct);
      }
      
    }
  }
}
