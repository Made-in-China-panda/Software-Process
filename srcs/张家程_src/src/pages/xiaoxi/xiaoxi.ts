import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the XiaoxiPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-xiaoxi',
  templateUrl: 'xiaoxi.html',
})
export class XiaoxiPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad XiaoxiPage');
  }

  objs=[
    {img:"../../assets/imgs/header.png",
    headname:"攻略说",
    content:"欢迎使用攻略说",
    data:"07-7"},
    {img:"../../assets/imgs/header.png",
    headname:"aa",
    content:"今天乌镇推出某某某活动，期待您的参与",
    data:"05-7"
    }]
}
