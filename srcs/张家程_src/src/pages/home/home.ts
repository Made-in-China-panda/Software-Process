import { Component ,ViewChild,ElementRef } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';


@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  chart :any;

  constructor(public navCtrl: NavController, public navParams: NavParams) {
	this.chart= localStorage.getItem('man');
	//console.log(this.chart)
  }
  
}
