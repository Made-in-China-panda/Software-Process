import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';

/**
 * Generated class for the ZDetailPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-z-detail',
  templateUrl: 'z-detail.html',
})
export class ZDetailPage {
  userInfo: any;
  places;

  constructor(private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
    this.userInfo=navParams.data;
    if(this.userInfo == '登山好时节'){
      this.http.get('http://192.168.30.144:8080/'+'shandong',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            this.places = data;
          });
      
      this.http.get('http://192.168.30.144:8080/'+'xizang',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            data[2].name = "05 南迦巴瓦峰"
            this.places.push(data[2]);
          });
      
      this.http.get('http://192.168.30.144:8080/'+'xianggang',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            data[2].name = "06 太平山顶"
            this.places.push(data[2]);
            console.log(this.places);
          });
      }
      else if(this.userInfo == '住进大草原'){
        this.http.get('http://192.168.30.144:8080/'+'neimeng',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            
            this.places = data;
            
          });
          this.http.get('http://192.168.30.144:8080/'+'sichuan',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            console.log(data)
            this.places.push(data[3]);
          });
      }
      else if(this.userInfo == '小众海岛游'){
        this.http.get('http://192.168.30.144:8080/'+'xianggang',{
          headers:new HttpHeaders({}),
          }).subscribe((data) => { // 监听
            console.log(data);
            this.places = [];
            data[1].name = '01 海洋公园';
            this.places[0] = data[1];
            data[3].name = '02 浅水湾';
            this.places.push(data[3]);
          });
          
      }
    }
  }

  


