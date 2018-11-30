import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { SearchPage} from '../search/search';
@Component({
  selector: 'page-about',
  templateUrl: 'about.html'
})

export class AboutPage {
  item=[12,2,3];
 food={
    idFood:'001',
    name:'香辣花蛤',
    pic:'G:\攻略说\imgs\鲁\1香辣花蛤\1.jpg',
    collection:'0',
    material:'花蛤'
  }
  constructor(public navCtrl: NavController) {
   
  }
search(){
  this.navCtrl.push(SearchPage);
}






}

// export class Food{
//   constructor(
//     public idFood:'001',
//     public name:'香辣花蛤',
//     public pic:'G:\攻略说\imgs\鲁\1香辣花蛤\1.jpg',
//     public  collection:'0',
//     public  material:'花蛤'
//   ){}
// }