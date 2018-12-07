import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the DianpingPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-dianping',
  templateUrl: 'dianping.html',
})
export class DianpingPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad DianpingPage');
  }

  objs=[
    {
      img:"../../assets/imgs/header.png",
      headname:"蓝大海",
      data:"2018-09-25",
      title:"麻婆豆腐",
      text:"制作方便易上手，色香味俱全",
      num1:"1",
      num2:"0",
    }
  ]
}
