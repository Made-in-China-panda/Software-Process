import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-games',
  templateUrl: './games.component.html',
  styleUrls: ['./games.component.css']
})
export class GamesComponent implements OnInit {

  constructor() { }
  food = {
    id: 100001,
    name: '花雕红烧肉',
    time: '1997-11-10',
    text: '我不知在何处呼唤着绿子',
  };
  foods = [this.food];
  del(i) {
    this.foods.splice(i);
  }
  ngOnInit() {
  }

}

