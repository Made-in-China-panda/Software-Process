import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { SearchPage} from '../search/search';
import { SweetPage } from '../sweet/sweet';
import { LuPage } from '../lu/lu';
import { ChuanPage } from '../chuan/chuan';
import { SuPage } from '../su/su';
import { YuePage } from '../yue/yue';
import {FoodstepPage } from '../foodstep/foodstep';
import { HttpClient, HttpHeaders } from '@angular/common/http';
@Component({
  selector: 'page-about',
  templateUrl: 'about.html'
})

export class AboutPage {
  num;
  items=[];
  food1;food2;food3;food4;
  first={};second={};third={};
  constructor(public navCtrl: NavController,public http:HttpClient) {
    this.http.get('http://192.168.30.144:8080/'+'food_lu',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        this.food1=data;
        this.items.push(data);
        this.first=this.food1[0];
        this.second=this.food1[3];
        this.third=this.food1[2];
      });
      
      this.http.get('http://192.168.30.144:8080/'+'food_chuan',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        this.food2=data;
        this.items.push(data);
      });
      this.http.get('http://192.168.30.144:8080/'+'food_su',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        this.food3=data;
        this.items.push(data);
      });
      this.http.get('http://192.168.30.144:8080/'+'food_yue',{
      headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        this.food4=data;
        this.items.push(data);
      });
     
        
      
  }
search(){
  this.navCtrl.push(SearchPage);
}
goSweet(){
  this.navCtrl.push(SweetPage);
}
back(){
  this.navCtrl.pop();
}
goRibang(){this.num=0;}
goYuebang(){this.num=1;}
goLu(){this.navCtrl.push(LuPage);}
goChuan(){this.navCtrl.push(ChuanPage);}
goSu(){this.navCtrl.push(SuPage);}
goYue(){this.navCtrl.push(YuePage);}
goFoodstep(a){
  this.navCtrl.push(FoodstepPage,a);
  // console.log(a);
}




}
