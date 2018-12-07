import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the ShoucangPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-shoucang',
  templateUrl: 'shoucang.html',
})
export class ShoucangPage {

  
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShoucangPage');
  }
  objs=[{
      id:0,
      head:"../../assets/imgs/header.png",
      headName:"蓝大海",
      images:"../../assets/imgs/shoucang-1.jpg",
      title:"麻婆豆腐",
      data:"09-9"},
      {id:1,
      head:"../../assets/imgs/header.png",
      headName:"蓝大海",
      images:"../../assets/imgs/shoucang-1.jpg",
      title:"水煮肉片",
      data:"06-24"}
  ]
}
