import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { WherePage } from '../where/where';
import { HttpClient, HttpHeaders } from '@angular/common/http';


/**
 * Generated class for the LDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-l-details',
  templateUrl: 'l-details.html',
})
export class LDetailsPage {

  userInfo;
  place;

  places;
  where(e){
    this.navCtrl.push(WherePage,this.places,)
  }
  
  constructor(private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
    this.userInfo=navParams.data;
    //console.log(navParams.data);
    if(navParams.data=='西藏'){
        this.http.get('http://192.168.30.144:8080/'+'xizang',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            this.place=data;
          });
      this.places = [{
        name:'xizang',
        where:'92.117/29.651',
      }]
    }
    else if(navParams.data=='四川'){
      this.http.get('http://192.168.30.144:8080/'+'sichuan',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            //console.log(data);
            this.place=data;
          });
          this.places = [{
            name:'sichuan',
            where:'103/33',
          }]
    }
    else if(navParams.data=='山东'){
      this.http.get('http://192.168.30.144:8080/'+'shandong',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            //console.log(data);
            this.place=data;
          });
          this.places = [{
            name:'shandong',
            where:'119.00/36.67',
          }]
    }
    else if(navParams.data=='内蒙'){
      this.http.get('http://192.168.30.144:8080/'+'neimeng',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
           // console.log(data);
            this.place=data;
          });
          this.places = [{
            name:'neimeng',
            where:'111.75/40.84',
          }]
    }
    else if(navParams.data=='香港'){
      this.http.get('http://192.168.30.144:8080/'+'xianggang',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            //console.log(data);
            this.place=data;
          });
          this.places = [{
            name:'xianggang',
            where:'114.15/22.15',
          }]
    }
  }
    
    
    
    
  }


