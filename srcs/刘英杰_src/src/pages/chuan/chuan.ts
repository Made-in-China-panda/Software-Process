import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the ChuanPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-chuan',
  templateUrl: 'chuan.html',
})
export class ChuanPage {
num;
flag0=true;
flag1=false;
items=[{
  idFood:'001',
  name:'香辣花蛤',
  taste:'蒜香',
  collection:'0',
  pic:'assets/imgs/美食/tt.jpg',
  material:'花蛤'
},{
  idFood:'001',
  name:'香辣花蛤',
  taste:'蒜香',
  collection:'0',
  pic:'assets/imgs/美食/tt.jpg',
  material:'花蛤'
},{
  idFood:'001',
  name:'香辣花蛤',
  taste:'蒜香',
  collection:'0',
  pic:'assets/imgs/美食/tt.jpg',
  material:'花蛤'
}];
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ChuanPage');
  }

goHot(){
  this.num=0;
  this.flag0=true;this.flag1=false;
}
goNew(){
  this.num=1;
  this.flag1=true;this.flag0=false;
}






}
