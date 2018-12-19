import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { SearchPage} from '../search/search';
import { VenomPage } from '../venom/venom';
import { HttpClient,HttpHeaders } from '@angular/common/http';


export class ServiceNameService {
  
  constructor(private http: HttpClient) { }

}
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
  movies1;
  movies2;
  movies3;
  movies4;
  movies5;
  moviesRoles
  // moviesRoles={
  //   moviesId:'001',
  //   rolesId:'001',
  //   rolesName:'艾迪·布洛克',
  //   rolesActor:'汤姆·哈迪',
  //   rolesImg:'../../assets/imags/movies/venom2.jpg',
  //   rolesIntro:'一名记者，毒液的宿主。因调查生命基金会人体实验丑闻而误入实验室，阴差阳错被外星生物毒液附体。由于无时无刻不在与体内的共生体互相博弈，他时而正义勇敢，为伤及无辜抱歉；时而在共生体的作用下变得狂暴危险，这一切就如他的自我独白：“这种力量，并非完全可怕。”'
  //   }
  isActive = 0;
  detActive = 0;
  isClick(i){
    this.isActive = i;
  }
  detClick(i){
    this.detActive = i;
  }
  constructor(public navCtrl: NavController, public navParams: NavParams,public http:HttpClient) {
        this.http.get('http://192.168.56.144:8080/'+'movies1',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
        this.movies1=data;
        // console.log(data);
        });
        this.http.get('http://192.168.56.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies2=data;
        });
        this.http.get('http://192.168.56.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies3=data;
        });
        this.http.get('http://192.168.56.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies4=data;
        });
        this.http.get('http://192.168.56.144:8080/'+'movies3',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies5=data;
        });
        this.http.get('http://192.168.56.144:8080/'+'moviesRoles',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.moviesRoles=data;
        });
  }



  search(){
    this.navCtrl.push(SearchPage);
  }
  back(){
    this.navCtrl.pop();
  }
  movDetail(a){
    this.navCtrl.push(VenomPage,a);
    console.log(a);
  }

}
