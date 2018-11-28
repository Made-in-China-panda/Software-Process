import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-loves',
  templateUrl: './loves.component.html',
  styleUrls: ['./loves.component.css']
})
export class LovesComponent implements OnInit {

  constructor() { }
  love = {
    name: '张翼鹏',
    type: 100001,
    text: '喜欢到全世界森林里的老虎都化成黄油',
    time: '1997-11-10',
  };
  loves = [this.love];
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  del(i) {
    this.loves.splice(i);
  }
  ngOnInit() {
  }

}
