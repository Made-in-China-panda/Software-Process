import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { LDetailsPage } from '../l-details/l-details';
// import { Camera, CameraOptions } from '@ionic-native/camera';

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html'
})
export class ContactPage {
  city = {
    name:'西藏',
    text:'',
    imgSrc:'',
    number:361,
    where:'91.117/29.657',
    whereName:'布达拉宫'

  }
  xizang = {
    src:'../../assets/imgs/旅游/西藏.jpg',
    name:'西藏'
  }
  xianggang = {
    src:'../../assets/imgs/旅游/香港.jpg',
    name:'香港'
  }
  zhuti = {
    src:'../../assets/imgs/旅游/古镇.png',
    name:'古镇好睡眠'
  }
  finally = {
    src:'../../assets/imgs/旅游/宁夏沙漠.png',
    text:'沙漠不是宁夏独有，但却成为宁夏较具代表性的旅游资源。“宁夏归来不看沙”是国内外游客对宁夏沙漠旅游最好的评价。'
  }

  lDetail(e){
    this.navCtrl.push(LDetailsPage, e.target.alt);
  }

  citysSrc = [this.xizang,this.xianggang,];
  zhutis = [this.zhuti,this.zhuti,this.zhuti];
  finallys = [this.finally,this.finally];
  constructor(public navCtrl: NavController) {

  }

}
