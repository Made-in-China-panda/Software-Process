import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { DengluPage } from '../denglu/denglu';
import { ZhanghaoPage } from '../zhanghao/zhanghao';
import { HelpPage } from '../help/help';


/**
 * Generated class for the ShezhiPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-shezhi',
  templateUrl: 'shezhi.html',
})
export class ShezhiPage {
  key: void;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShezhiPage');
  }

  gotozhanghao(){
    this.navCtrl.push(ZhanghaoPage);
  }
  gotojieshao(){
    //this.navCtrl.push(JieshaoPage);
  }
  gotohelp(){
    this.navCtrl.push(HelpPage);
  }
  gotodenglu(){
    this.navCtrl.push(DengluPage);
    this.key = localStorage.setItem('key','no');
    this.key = localStorage.setItem('man',' ');
  }
}
