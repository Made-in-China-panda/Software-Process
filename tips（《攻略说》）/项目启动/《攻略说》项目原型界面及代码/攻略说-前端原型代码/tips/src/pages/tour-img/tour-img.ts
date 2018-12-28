import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ContactPage } from '../contact/contact';
/**
 * Generated class for the TourImgPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-tour-img',
  templateUrl: 'tour-img.html',
})
export class TourImgPage {
  timer;
  ionViewDidLoad(){
    this.timer = setTimeout(() => {
      this.navCtrl.push(ContactPage);
    }, 3000);
}
gototourpage(){
  clearTimeout(this.timer);
  this.navCtrl.push(ContactPage);
}
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }
}
