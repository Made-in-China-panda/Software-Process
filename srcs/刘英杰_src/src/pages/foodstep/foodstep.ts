import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { AlertController } from 'ionic-angular';
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
  collectI;
  flag;
  
  food={
    name:'麻婆豆腐',
    taste:'麻辣',
    collection:0,
    pic:'assets/imgs/美食/川/1麻婆豆腐/1.jpg',
    material:'豆腐一块;葱花适量;郫县豆瓣酱适量;老干妈适量;水淀粉适量;麻油适量;鸡精少许;盐适量'
  }
  step={
    name:'麻婆豆腐',
    steppic:'assets/imgs/美食/川/1麻婆豆腐/1.jpg;assets/imgs/美食/川/1麻婆豆腐/2.jpg;assets/imgs/美食/川/1麻婆豆腐/3.jpg;assets/imgs/美食/川/1麻婆豆腐/4.png;assets/imgs/美食/川/1麻婆豆腐/5.png;assets/imgs/美食/川/1麻婆豆腐/6.png;assets/imgs/美食/川/1麻婆豆腐/7.jpg;assets/imgs/美食/川/1麻婆豆腐/8.jpg',
    stepname:'步骤一;步骤二;步骤三;步骤四;步骤五;步骤六;步骤七;步骤八',
    stepcontent:'豆腐切小块。;葱花、老干妈、郫县豆瓣酱。;豆腐入油锅炒。;煎至两面金黄。;放入盐、老干妈、豆瓣酱。;酱料炒匀，放适量水煮沸，加入水淀粉。;最后撒入葱花、鸡精、适量的香油盖面，完工。;成品。'
   
  } 
  foodcomment=[{
    name:'麻婆豆腐',
    username:'蓝大海',
    userhead:'assets/imgs/logo.png',
    time:'2018-9-23',
    content:'好吃好吃'  
  },{
    name:'麻婆豆腐',
    username:'蓝大海',
    userhead:'assets/imgs/logo.png',
    time:'2018-9-23',
    content:'好吃好吃飞啊华纳v阿富汗发货v韩狗日九分v角度上看能否你死几个人你是v开发建瓯市v附近' 
  }]
  stepnames = this.step.stepname.split(";");
  steppics= this.step.steppic.split(";");
  stepcontents = this.step.stepcontent.split(";");
  materials=this.food.material.split(";");
  items=[];

  constructor(public navCtrl: NavController, public navParams: NavParams,public alertCtrl: AlertController) {
    for(var i=0;i<this.stepnames.length;i++){
      this.items.push({
        stepname:this.stepnames[i],
        steppic:this.steppics[i],
        stepcontent:this.stepcontents[i],
      })
    }
    console.log(this.items);
}


  ionViewDidLoad() {
    console.log('ionViewDidLoad FoodstepPage');
  }

collect(){
  if(this.collectI==0){
    this.flag=false;
    this.collectI=1;
    if(this.food.collection>0){this.food.collection--;}
    }
  else{this.flag=true;this.collectI=0;this.food.collection++;}
}

submit(){
  var mypl=document.getElementsByTagName('textarea')[0];
  
 
  if(Boolean(mypl.value)!=false){
    this.foodcomment.push({
    name:'麻婆豆腐',
    username:'蓝大海',
    userhead:'assets/imgs/logo.png',
    time:'2018-9-23',
    content:mypl.value
    })
  } 
   else {
      const alert = this.alertCtrl.create({
        title: 'Hi Friend!',
        subTitle: 'Comments can not be empty!',
        buttons: ['OK']
      });
      alert.present();
   
  }
  mypl.value='';

}
 

}
