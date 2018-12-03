import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

/**
 * Generated class for the FoodstepPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-foodstep',
  templateUrl: 'foodstep.html',
})
export class FoodstepPage {
  food={
    idFood:'001',
    name:'香辣花蛤',
    taste:'蒜香',
    collection:'0',
    pic:'assets/imgs/美食/tt.jpg',
    material:'花蛤'
  }
  step={

  }
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad FoodstepPage');
  }

}
