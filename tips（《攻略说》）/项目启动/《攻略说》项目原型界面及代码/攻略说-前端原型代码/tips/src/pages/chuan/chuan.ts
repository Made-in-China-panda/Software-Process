import { Component, EventEmitter } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import {FoodstepPage } from '../foodstep/foodstep';
// import $ from 'jquery';
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
items;

  constructor(public navCtrl: NavController, public navParams: NavParams,public http:HttpClient) {
    this.http.get('http://192.168.56.144:8080/'+'food_chuan',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        this.items=data;
        // console.log(data);
      });
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

goFoodstep(a){
  this.navCtrl.push(FoodstepPage,a);
}



}
