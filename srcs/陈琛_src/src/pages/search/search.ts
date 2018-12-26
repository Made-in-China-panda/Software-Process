import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FoodstepPage } from '../foodstep/foodstep';
import { SweetstepPage } from '../sweetstep/sweetstep';
import { VenomPage } from '../venom/venom';
import { WherePage } from '../where/where';
/**
 * Generated class for the SearchPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-search',
  templateUrl: 'search.html',
})
export class SearchPage {
  itemsfood=Array();
  itemssweet=Array();
  itemstrip=Array();
  itemsmovies=Array();
  arrfood=["food_chuan","food_lu","food_su","food_yue"];
  arrsweet=["sweet_binggan","sweet_buding","sweet_cake"];
  arrtrip=["xianggang","sichuan","shandong","xizang","neimeng"];
  arrmovies=["movies1","movies2","movies3"];
  constructor(public navCtrl: NavController, public navParams: NavParams,
    public http:HttpClient) {
      for(var i=0;i<this.arrfood.length;i++){
        this.http.get('http://192.168.30.144:8080/'+this.arrfood[i],{
          headers:new HttpHeaders({}),
          }).subscribe((data)=>{
            this.itemsfood.push(data);
          });
      }
      for(var i=0;i<this.arrsweet.length;i++){
        this.http.get('http://192.168.30.144:8080/'+this.arrsweet[i],{
          headers:new HttpHeaders({}),
          }).subscribe((data)=>{
            this.itemssweet.push(data);
          });
      }
      for(var i=0;i<this.arrtrip.length;i++){
        this.http.get('http://192.168.30.144:8080/'+this.arrtrip[i],{
          headers:new HttpHeaders({}),
          }).subscribe((data)=>{
            this.itemstrip.push(data);
          });
      }
      for(var i=0;i<this.arrmovies.length;i++){
        this.http.get('http://192.168.30.144:8080/'+this.arrmovies[i],{
          headers:new HttpHeaders({}),
          }).subscribe((data)=>{
            this.itemsmovies.push(data);
          });
      }
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad SearchPage');
  }
  myInput:string;
  objfood=[];
  objsweet=[];
  objtrip=[];
  objmovies=[];
  index:number;
  output(){
    this.getinformation();  
    var reg =new RegExp(this.myInput,"g");
    // 菜系匹配
    if(this.myInput){
      for(var i=0;i<this.itemsfood.length;i++){
        for(var j=0;j<this.itemsfood[i].length;j++){
          if(reg.test(this.itemsfood[i][j].name)){
            this.objfood.push(this.itemsfood[i][j]);
          }
        }
      }
    }
    // 甜点匹配
    if(this.myInput){
      for(var i=0;i<this.itemssweet.length;i++){
        for(var j=0;j<this.itemssweet[i].length;j++){
          if(reg.test(this.itemssweet[i][j].name)){
            this.objsweet.push(this.itemssweet[i][j]);
          }
        }
      }
    }
    // 旅游匹配
    if(this.myInput){
      for(var i=0;i<this.itemstrip.length;i++){
        for(var j=0;j<this.itemstrip[i].length;j++){
          if(reg.test(this.itemstrip[i][j].name)){
            this.objtrip.push(this.itemstrip[i][j]);
          }
        }
      }
    }
    // 电影匹配
    if(this.myInput){
      for(var i=0;i<this.itemsmovies.length;i++){
        for(var j=0;j<this.itemsmovies[i].length;j++){
          if(reg.test(this.itemsmovies[i][j].moviesName)){
            this.objmovies.push(this.itemsmovies[i][j]);
          }
        }
      }
    }
    
  }
  
  getinformation(){
    this.objfood=[];
    this.objsweet=[];
    this.objtrip=[];
    this.objmovies=[];
  }
  foodjump(name){
    this.navCtrl.push(FoodstepPage,name);
  }
  sweetjump(name){
    this.navCtrl.push(SweetstepPage,name);
  }
  tripjump(name){
    console.log(name);
    // console.log(this.itemstrip);
    // console.log(this.index);
    this.navCtrl.push(WherePage,this.arrtrip);
  }
  moviesjump(name){
    this.navCtrl.push(VenomPage,name);
  }
  back(){
    this.navCtrl.pop();
  }  
}
