import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-fonts',
  templateUrl: './fonts.component.html',
  styleUrls: ['./fonts.component.css']
})
export class FontsComponent implements OnInit {

  constructor() { }
  food = {
    id: 100001,
    name: '鲁菜',
    number: '125'
  };
  foods = [this.food];

  video = {
    id: 100001,
    name: '毒液',
    number: '135'
  };
  videos = [this.video];

  trip = {
    id: 100001,
    name: '华山',
    number: '225'
  };
  trips = [this.trip];
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  delFood(i) {
    this.foods.splice(i);
  }
  delVideo(i) {
    this.videos.splice(i);
  }
  delTrip(i) {
    this.trips.splice(i);
  }
  ngOnInit() {
  }

}
