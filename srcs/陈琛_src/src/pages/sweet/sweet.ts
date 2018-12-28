import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SearchPage} from '../search/search';
import {HttpClient,HttpHeaders} from'@angular/common/http';
import { SweetstepPage } from '../sweetstep/sweetstep';
/**
 * Generated class for the SweetPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-sweet',
  templateUrl: 'sweet.html',
})
export class SweetPage {
cakes;
budings;
binggans;
  constructor(public navCtrl: NavController, public navParams: NavParams,public http:HttpClient) {
    this.http.get('http://192.168.30.144:8080/'+'sweet_cake',{
      headers:new HttpHeaders({}),
      }).subscribe((data)=>{
        this.cakes=data;
      });
      this.http.get('http://192.168.30.144:8080/'+'sweet_buding',{
        headers:new HttpHeaders({}),
        }).subscribe((data)=>{
          this.budings=data;
        });
      this.http.get('http://192.168.30.144:8080/'+'sweet_binggan',{
        headers:new HttpHeaders({}),
        }).subscribe((data)=>{
          this.binggans=data;
        });

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad SweetPage');
  }
  search(){
    this.navCtrl.push(SearchPage);
  }

  goSweetstep(a){
    this.navCtrl.push(SweetstepPage,a);
    console.log(a);
  }



}
