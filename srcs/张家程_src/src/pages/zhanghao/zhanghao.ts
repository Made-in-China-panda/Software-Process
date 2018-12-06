import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ForgetMimaPage } from '../forget-mima/forget-mima';
import { MimaPage } from '../mima/mima';

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
  user;
  userid;
  nickname;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    //console.log('ionViewDidLoad ZhanghaoPage');
    this.man = localStorage.getItem('man');
    this.user = this.man.split('/');
    //console.log(this.user);
    this.userid = this.user[0];
    this.nickname = this.user[1];
  }

  
  // 暂时先自己定义的id
  
  gotomima(){
    this.navCtrl.push(MimaPage);
  }
}