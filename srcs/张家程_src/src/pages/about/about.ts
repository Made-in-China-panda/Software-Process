import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { SearchPage} from '../search/search';

//import { LuPage } from '../lu/lu';

@Component({
  selector: 'page-about',
  templateUrl: 'about.html'
})

export class AboutPage {
  num;
  items=[1,2,3];
  food={
    idFood:'001',
    name:'香辣花蛤',
    taste:'蒜香',
    collection:'0',
    pic:'assets/imgs/美食/tt.jpg',
    material:'花蛤'
  }
 
  constructor(public navCtrl: NavController) {
   
  }
search(){
  this.navCtrl.push(SearchPage);
}
back(){ this.navCtrl.pop();}
goSweet(){
  //this.navCtrl.push(SweetPage);
}
goRibang(){this.num=0;}
goYuebang(){this.num=1;}
//goLu(){this.navCtrl.push(LuPage);}
//goChuan(){this.navCtrl.push(ChuanPage);}
//goSu(){this.navCtrl.push(SuPage);}
//goYue(){this.navCtrl.push(YuePage);}
goFoodstep(){
  //this.navCtrl.push(FoodstepPage);
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