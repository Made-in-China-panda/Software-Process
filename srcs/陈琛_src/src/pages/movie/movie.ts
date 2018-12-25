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
  isActive = 0;
  detActive = 0;
  isClick(i){
    this.isActive = i;
  }
  detClick(i){
    this.detActive = i;
  }
  constructor(public navCtrl: NavController, public navParams: NavParams,public http:HttpClient) {
        this.http.get('http://192.168.30.144:8080/'+'movies1',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
        this.movies1=data;
        // console.log(data);
        });
        this.http.get('http://192.168.30.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies2=data;
        });
        this.http.get('http://192.168.30.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies3=data;
        });
        this.http.get('http://192.168.30.144:8080/'+'movies2',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies4=data;
        });
        this.http.get('http://192.168.30.144:8080/'+'movies3',{
        headers:new HttpHeaders({}),
        }).subscribe((data) => { // 监听
          this.movies5=data;
        });
        this.http.get('http://192.168.30.144:8080/'+'moviesRoles',{
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
