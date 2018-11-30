import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SearchPage} from '../search/search';

/**
 * Generated class for the MoviePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-movie',
  templateUrl: 'movie.html',
})
export class MoviePage {
  isActive = 0;
  isClick(i){
    this.isActive = i;
  }
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  search(){
    this.navCtrl.push(SearchPage);
  }

}
