import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
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
  

  constructor(private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
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
    mibao:""
  };
  adduser(){
    //var reg=/^1[0-9]{10}$/;
    //if(reg.test(this.count)){
      this.man.name=this.name;
      this.man.id=this.count;
      this.man.password=this.password;
      this.man.mibao=this.gender+'/'+this.answer;
      //console.log(this.man);
    //}else{
      //alert('手机号码输入不正确！');
    //}
    if(this.man.name && this.man.id && this.man.password && this.man.mibao){
      this.http.post('http://192.168.56.144:8080/'+'users',this.man,
      {headers:this.headers}).subscribe((data) => {});
      this.navCtrl.push(DengluPage);
      }
      
    }
    

}
