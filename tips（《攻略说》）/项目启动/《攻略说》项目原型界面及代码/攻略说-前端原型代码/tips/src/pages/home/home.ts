// import { Component ,ViewChild,ElementRef } from '@angular/core';
// import { NavController, NavParams, ModalController } from 'ionic-angular';
// import { MenuController } from 'ionic-angular';
// import { ContactPage } from '../contact/contact';
// import { AboutPage } from '../about/about';
// import { MoviePage } from '../movie/movie';
// import { ShezhiPage } from '../shezhi/shezhi';
// import { DengluPage } from '../denglu/denglu';
// import { ShoucangPage } from '../shoucang/shoucang';
// import { XiaoxiPage } from '../xiaoxi/xiaoxi';
// import { DianpingPage } from '../dianping/dianping';
// import { SearchPage } from '../search/search';


// @Component({
//   selector: 'page-home',
//   templateUrl: 'home.html'
// })
// export class HomePage {

//   chart :any;

//   constructor(public modalCtrl: ModalController,public navCtrl: NavController, public navParams: NavParams,public menuCtrl: MenuController,) {
// 	this.chart= localStorage.getItem('man');
// 	//console.log(this.chart)
//   }
//   ionViewDidLoad(){
//     if(document.querySelector('#trips')){
//       document.querySelector('#trips').addEventListener('click',()=>{
//         let profileModal = this.modalCtrl.create(ContactPage);
//         profileModal.present();
//       },false)

//     }
//     if(document.querySelector('#foods')){
//       document.querySelector('#foods').addEventListener('click',()=>{
//         let profileModal = this.modalCtrl.create(AboutPage);
//         profileModal.present();
//       },false)

//     }
//     if(document.querySelector('#movies')){
//       document.querySelector('#movies').addEventListener('click',()=>{
//         let profileModal = this.modalCtrl.create(MoviePage);
//         profileModal.present();
//       },false)

//     }
//   }
  
// closeMenu() {
//   this.menuCtrl.close();
//   console.log("end!");
// }





// gotodenglu(){
// this.navCtrl.push(DengluPage);
// }
// gotoshoucang(){
// this.navCtrl.push(ShoucangPage);
// }
// gotoxiaoxi(){
// this.navCtrl.push(XiaoxiPage);
// }
// gotodianping(){
// this.navCtrl.push(DianpingPage);
// }
// gotoshezhi(){
// this.navCtrl.push(ShezhiPage);
// } 
// search(){
//   this.navCtrl.push(SearchPage);
// } 
// }











import { Component ,ViewChild,ElementRef } from '@angular/core';
import { NavController, NavParams, ModalController } from 'ionic-angular';
import { MenuController } from 'ionic-angular';
import { ContactPage } from '../contact/contact';
import { AboutPage } from '../about/about';
import { MoviePage } from '../movie/movie';
import { ShezhiPage } from '../shezhi/shezhi';
import { DengluPage } from '../denglu/denglu';
import { ShoucangPage } from '../shoucang/shoucang';
import { XiaoxiPage } from '../xiaoxi/xiaoxi';
import { DianpingPage } from '../dianping/dianping';
import { SearchPage } from '../search/search';
import { MovImgPage }from '../mov-img/mov-img';
import { FoodImgPage }from '../food-img/food-img';
import { TourImgPage }from '../tour-img/tour-img'
import { App } from 'ionic-angular';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  chart :any;

  constructor(public modalCtrl: ModalController,public navCtrl: NavController,
     public navParams: NavParams,public menuCtrl: MenuController,private app:App) {
	this.chart= localStorage.getItem('man');
     }
  
closeMenu() {
  this.menuCtrl.close();
  console.log("end!");
}


gotomovimg(){
  this.app.getRootNav().push(MovImgPage);
  }

gototourimg(){
  this.app.getRootNav().push(TourImgPage);
}
gotofoodimg(){
  this.app.getRootNav().push(FoodImgPage);
}


gotodenglu(){
this.navCtrl.push(DengluPage);
}
gotoshoucang(){
this.navCtrl.push(ShoucangPage);
}
gotoxiaoxi(){
this.navCtrl.push(XiaoxiPage);
}
gotodianping(){
this.navCtrl.push(DianpingPage);
}
gotoshezhi(){
this.navCtrl.push(ShezhiPage);
} 
search(){
  this.navCtrl.push(SearchPage);
} 
}
