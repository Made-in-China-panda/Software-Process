import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, AlertController } from 'ionic-angular';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { WherePage } from '../where/where';
import { FoodstepPage } from '../foodstep/foodstep';
import { VenomPage } from '../venom/venom';

/**
 * Generated class for the LovePage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-love',
  templateUrl: 'love.html',
})
export class LovePage {

  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'
  });

  man;
  isActive=0;
  user: any;
  userid: any;
  jingdian = [];
  allplace = [];
  splace = ['xianggang','shandong','neimeng','sichuan','xizang'];
  caixi = ['food_chuan','food_lu','food_su','food_yue'];
  food = []
  loveJingdian = [];
  allFoods = [];
  loveJingdian02: any;
  foods=[];
  allmovies=[];
  movies=[];
  movie=[];
  allmoviesName=[];

  
  goFoodstep(a,s){
    this.navCtrl.push(FoodstepPage,a);
    console.log(s);
  }
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  movDetail(a){
    this.navCtrl.push(VenomPage,a);
    //console.log(a);
  }
  ////////////////////////////////////////////////////////////////////////////////
  constructor(public alertCtrl: AlertController,private http: HttpClient,public navCtrl: NavController, public navParams: NavParams) {
    
    //////////////////////////////////////////////////////////////////////////////
    this.man = localStorage.getItem('man');
    this.user = this.man.split('/');
    this.userid = this.user[0];
    console.log(this.userid)
    
//////////////////////////////获取数据库所有电影信息///////////////////////////////////////////////////
    for(var x=1;x<4;x++){
        this.http.get('http://192.168.30.144:8080/'+'movies'+x,{
          headers:new HttpHeaders({
          }),
        }).subscribe((data) => { // 监听
          for(var j in data){
            this.allmovies.push(data[j]);
          }
          //console.log(this.allmovies)
        });
      }
//////////////////////////////获取电影收藏表与已登录账号匹配的电影名/////////////////////////////////////////////////////
    this.http.get('http://192.168.30.144:8080/'+'shoucang_movie',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      console.log(data)
      for(var i in data){
        if(this.userid == data[i].id){
          this.movies.push(data[i].name);
        }
      }
      for(var s in this.allmovies){
        this.allmoviesName.push(this.allmovies[s].moviesName);
        //console.log(this.allmovies[s].moviesName);
      }
      //console.log(this.allmoviesName);
      console.log(this.movies)
      for(var y in this.movies){
        for(var f in this.allmovies){
          if(this.movies[y] == this.allmovies[f].moviesName){
            this.movie.push(this.allmovies[f])
          }
        }
      }
      //console.log(this.movie)
    });
//////////////////////////////根据电影名获取对应电影信息/////////////////////////////////////////////////////////



/*---------------------------------------------------美食收藏-----------------------------------------------------*/
    for(var j in this.caixi){
      this.http.get('http://192.168.30.144:8080/'+this.caixi[j],{
        headers:new HttpHeaders({
        }),
      }).subscribe((data) => { // 监听
        for(var k in data){
          this.allFoods.push(data[k]);
        }
      });
    }
/*----------------------------------------匹配现登陆用户的美食收藏----------------------------------------------*/
    this.http.get('http://192.168.30.144:8080/'+'shoucang_food',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      for(var i in data){
        if(this.userid == data[i].id){
          this.food[i] = data[i].name;
        }
      }     
/*----------------------------------------显示现登陆用户的美食收藏----------------------------------------------*/
      for(var j in this.food){
        for(var s in this.allFoods){
          if(this.allFoods[s].name==this.food[j]){
            this.foods.push(this.allFoods[s]);
          }
        }
      }
    });
      
      
    /////////////////////////////////////////////////////////////////////////////
    for(var i in this.splace){
      this.http.get('http://192.168.30.144:8080/'+this.splace[i],{
        headers:new HttpHeaders({}),
      }).subscribe((data) => { // 监听
        for(var i in data){
          this.allplace.push(data[i]);
        }
        //console.log(this.allplace)
      });
    }
    ////////////////////////////////////////////////////////////////////////////
    this.http.get('http://192.168.30.144:8080/'+'shoucang',{
      headers:new HttpHeaders({
      }),
    }).subscribe((data) => { // 监听
      
      for(var i in data){
        if(this.userid==data[i].id){
          this.jingdian[i] = data[i].name;
        }
      }
      
      //console.log(this.jingdian)
      /////////////////////////////////////////////////////////////////////////////
      for(var j in this.jingdian){
        var reg = new RegExp(this.jingdian[j]);
        for(var s in this.allplace){
          if(this.allplace[s].name.match(reg)){
            this.loveJingdian.push(this.allplace[s]);
          }
        }
      }
      
      /////////////////////////////////////////////////////////////////////////////////
      //console.log(this.loveJingdian)
      for(var x in this.loveJingdian){
        this.loveJingdian[x].name = this.loveJingdian[x].name.split(' ')[1];
      }
    });  
  }
  
  ionViewDidLoad() {
    console.log('ionViewDidLoad LovePage');
  }
 
  isClick(i){
    this.isActive=i;
  }
  where(e){
    this.navCtrl.push(WherePage)
  }
shoucang(e,index){
  
  var str = e.target.parentNode.parentNode.parentNode.firstElementChild.innerHTML.split('<')[0];

  for(var i in this.jingdian){
    var str1 = this.jingdian[i];
    var reg = new RegExp(str);
    if(str1.match(reg)){
      str = this.jingdian[i];
      break;
    }
  }
  this.http.delete('http://192.168.30.144:8080/'+'shoucang'+'/id/'+this.userid,
        {headers:this.headers}).subscribe(data => {console.log('5')});
 
        const alert = this.alertCtrl.create({
          title: 'Hi Friend!',
          subTitle: '删除成功',
          buttons: ['OK']
        });
        alert.present();

/////////////////////////////////////////////////////////////////////////////////////////////
 this.jingdian.splice(index,1);
  this.loveJingdian.splice(index,1);
  // console.log(this.jingdian)
  // console.log(this.loveJingdian)
  for(var j in this.loveJingdian){
    var obj = {
      name:"",
      id:""
    };
    obj.name = this.loveJingdian[j].name;
    obj.id = this.userid;
    this.http.post('http://192.168.30.144:8080/'+'shoucang',obj,
      		{headers:this.headers}).subscribe((data) => {});
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////
shoucang_food(e,index){
this.http.delete('http://192.168.30.144:8080/'+'shoucang_food'+'/id/'+this.userid,
        {headers:this.headers}).subscribe(data => {console.log('5')});
  this.food.splice(index,1);
  this.foods.splice(index,1);
  // console.log(this.food)
  // console.log(this.foods)
  const alert = this.alertCtrl.create({
    title: 'Hi Friend!',
    subTitle: '删除成功',
    buttons: ['OK']
  });
  alert.present();

  for(var j in this.foods){
    var obj = {
      name:"",
      id:""
    };
    obj.name = this.foods[j].name;
    obj.id = this.userid;
    this.http.post('http://192.168.30.144:8080/'+'shoucang_food',obj,
      		{headers:this.headers}).subscribe((data) => {});
  }
}
////////////////////////////////////////////////////////////////////////////////////////////
shoucang_movie(e,index){
  this.http.delete('http://192.168.30.144:8080/'+'shoucang_movie'+'/id/'+this.userid,
          {headers:this.headers}).subscribe(data => {console.log('5')});
    this.movie.splice(index,1);
    this.movies.splice(index,1);
    //console.log(this.movies)
    
  
    for(var j in this.movies){
      var obj = {
        name:"",
        id:""
      };
      obj.name = this.movies[j];
      console.log(this.movies[j])
      obj.id = this.userid;
      this.http.post('http://192.168.30.144:8080/'+'shoucang_movie',obj,
            {headers:this.headers}).subscribe((data) => {});
    }
    const alert = this.alertCtrl.create({
      title: 'Hi Friend!',
      subTitle: '删除成功',
      buttons: ['OK']
    });
    alert.present();
  }
arr = ['电影收藏','美食收藏','景点收藏']

}
