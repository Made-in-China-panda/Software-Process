import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { WherePage } from '../where/where';


/**
 * Generated class for the LDetailsPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-l-details',
  templateUrl: 'l-details.html',
})
export class LDetailsPage {

  userInfo;
  places = [{
    name:'01 布达拉宫',
    src:'../../assets/imgs/旅游/布达拉宫.jpg',
    where:'122/111',
    h1:'中国西藏拉萨的宫堡式建筑群',
    text:'布达拉宫始建于公元7世纪，是藏王松赞干布为远嫁西藏的唐朝文成公主而建。在拉萨海拔3,700多米的红山上建造了999间房屋的宫宇－－布达拉宫。宫堡依山而建，现占地41万平方米，建筑面积13万平方米，宫体主楼13层,高115米,全部为石木结构，5座宫顶覆盖镏金铜瓦，金光灿烂，气势雄伟，是藏族古建筑艺术的精华。被誉为高原圣殿'
  }]
  where(e){
    this.navCtrl.push(WherePage,this.places)
  }
  
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.userInfo = navParams.data;
    console.log(this.userInfo);
    
  }

  ionViewDidLoad() {
  }

}
