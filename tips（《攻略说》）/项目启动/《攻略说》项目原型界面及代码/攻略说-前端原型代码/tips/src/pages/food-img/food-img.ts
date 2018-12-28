import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { AboutPage }from '../about/about'

/**
 * Generated class for the FoodImgPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-food-img',
  templateUrl: 'food-img.html',
})
export class FoodImgPage {
  timer;
  ionViewDidLoad(){
    this.timer = setTimeout(() => {
      this.navCtrl.push(AboutPage);
    }, 3000);
}
gotofoodpage(){
  clearTimeout(this.timer);
  this.navCtrl.push(AboutPage);
}
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

}
