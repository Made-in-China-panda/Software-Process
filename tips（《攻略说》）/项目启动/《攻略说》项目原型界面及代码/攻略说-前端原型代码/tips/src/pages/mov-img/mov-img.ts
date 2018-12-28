import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { App } from 'ionic-angular';
import { MoviePage } from '../movie/movie';

/**
 * Generated class for the MovImgPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-mov-img',
  templateUrl: 'mov-img.html',
})
export class MovImgPage {
  timer;
  ionViewDidLoad(){
    this.timer = setTimeout(() => {
      this.navCtrl.push(MoviePage);
    }, 3000);
}
gotomovpage(){
  clearTimeout(this.timer);
  this.navCtrl.push(MoviePage);
}
  
  constructor(public navCtrl: NavController, public navParams: NavParams,private app:App) {
    
  }
}

