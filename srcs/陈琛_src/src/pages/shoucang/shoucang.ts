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
  man;

  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ShoucangPage');
    this.man = localStorage.getItem('man').split('/')[1];
    console.log(this.man)
  }
  
  objs=[{
      id:0,
      img:"../../assets/imgs/movies/venom3.jpg",
      headName:"蓝大海",
      
      title:"麻婆豆腐",
      data:"09-9"},
      {id:1,
      img:"../../assets/imgs/movies/寻梦5.jpg",
      headName:"蓝大海",
      
      title:"水煮肉片",
      data:"06-24"}
  ]
}
