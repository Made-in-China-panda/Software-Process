import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SearchPage} from '../search/search';
import { VenomPage } from '../venom/venom';
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
  movies={
    moviesId:'001',
    moviesName:'毒液：致命守护者',
    moviesSco:'7.4',
    moviesImg:'../../assets/imgs/movies/venom.jpg',
    moviesIntro:'身为记者的艾迪（汤姆·哈迪饰）在调查生命基金会老板卡尔顿·德雷克（里兹·阿迈德饰）的过程中，事业遭受重创，与未婚妻安妮·韦英（米歇尔·威廉姆斯饰）的关系岌岌可危，并意外被外星共生体入侵，历经挣扎对抗，最终成为拥有强大超能力，无人可挡的“毒液”。',
  }
  moviesRoles={
    moviesId:'001',
    rolesId:'001',
    rolesName:'艾迪·布洛克',
    rolesActor:'汤姆·哈迪',
    rolesImg:'../../assets/imags/movies/venom2.jpg',
    rolesIntro:'一名记者，毒液的宿主。因调查生命基金会人体实验丑闻而误入实验室，阴差阳错被外星生物毒液附体。由于无时无刻不在与体内的共生体互相博弈，他时而正义勇敢，为伤及无辜抱歉；时而在共生体的作用下变得狂暴危险，这一切就如他的自我独白：“这种力量，并非完全可怕。”'
    }
  isActive = 0;
  detActive = 0;
  isClick(i){
    this.isActive = i;
  }
  back(){
    this.navCtrl.pop();
  }
  detClick(i){
    this.detActive = i;
  }
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  search(){
    this.navCtrl.push(SearchPage);
  }
  movDetail(){
    this.navCtrl.push(VenomPage);
  }

}
