import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SearchPage} from '../search/search';
/**
 * Generated class for the SweetPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-sweet',
  templateUrl: 'sweet.html',
})
export class SweetPage {

items=[1,2,3,4]
sweet={
  idSweet:'001',
  name:'海绵蛋糕',
  pic:'assets/imgs/美食/甜点/蛋糕/海绵蛋糕.png',
  collection:'0',
  material:'奶油'

}
  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad SweetPage');
  }
  search(){
    this.navCtrl.push(SearchPage);
  }





}
