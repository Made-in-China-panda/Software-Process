import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { FoodstepPage } from '../foodstep/foodstep';
import { SweetstepPage } from '../sweetstep/sweetstep';
import { AlertController } from 'ionic-angular';
/**
 * Generated class for the CommentPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-dianping',
  templateUrl: 'dianping.html',
})
export class DianpingPage {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });
arr=['美食点评','电影点评'];
isActive=0;
foods;
arr1=['sweet_cake','sweet_buding','sweet_binggan']
sweet=[];realsweet=[];
names=[];
  constructor(public navCtrl: NavController, public navParams: NavParams,public http:HttpClient,public alertCtrl: AlertController) {
    this.http.get('http://192.168.30.144:8080/'+'food_comment',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
     this.foods=data;
  });

   for(var i=0;i<this.arr1.length;i++){
    this.http.get('http://192.168.30.144:8080/'+this.arr1[i],{
        headers:new HttpHeaders({
        }),
      }).subscribe((data) => { // 监听
       this.sweet.push(data);
    });
  }


  }

  
  ionViewDidLoad() {
    
  }

  ionViewDidEnter(){
    this.realsweet=Array.from(this.sweet);
    for(var i=0; i<this.realsweet.length;i++ ){
      for(var j=0;j<this.realsweet[i].length;j++){
        this.names.push(this.realsweet[i][j].name);
      }
    }
    //  console.log(this.realsweet);
  }

  isClick(i){
    this.isActive=i;
    
  }
  goFoodstep(a){
    if(this.names.indexOf(a)!=-1){
      this.navCtrl.push(SweetstepPage,a);
      console.log(a);
    }else{
      this.navCtrl.push(FoodstepPage,a);
      console.log(a);
    }
    
  }
  deletecomment(a){
    this.http.delete('http://192.168.30.144:8080/'+'food_comment'+'/id/'+a,
    {headers:this.headers}).subscribe(data => {});
    const alert = this.alertCtrl.create({
      title: 'Hi Friend!',
      subTitle: '删除成功!',
      buttons: ['OK']
    });
    alert.present();
    this.http.get('http://192.168.30.144:8080/'+'food_comment',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
     this.foods=data;
  });





  }


}
