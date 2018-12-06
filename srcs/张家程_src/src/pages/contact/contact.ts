import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { LDetailsPage } from '../l-details/l-details';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ZDetailPage } from '../z-detail/z-detail';
import { DengluPage } from '../denglu/denglu';
import { ShezhiPage } from '../shezhi/shezhi';
// import { Camera, CameraOptions } from '@ionic-native/camera';

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html'
})
export class ContactPage {
  
  allImg;
  citysSrc;
  zhutis;
  finallys;

  lDetail(e){
    this.navCtrl.push(LDetailsPage, e.target.alt);
  }
  detail(e){
    this.navCtrl.push(ZDetailPage, e.target.alt);
  }
  denglu(){
    this.navCtrl.push(ShezhiPage);
  }

  constructor(private http: HttpClient,public navCtrl: NavController) {

  }
  

  ionViewDidLoad() {
    this.http.get('http://192.168.56.144:8080/'+'shouye',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      this.allImg = data;
      this.citysSrc = this.allImg.slice(0,5);
      this.zhutis = this.allImg.slice(5,8);
      
    });
  

  this.http.get('http://192.168.56.144:8080/'+'mudidi',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      //console.log(data);
      this.finallys = data;
    });
  }
}
