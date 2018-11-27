import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-loves',
  templateUrl: './loves.component.html',
  styleUrls: ['./loves.component.css']
})
export class LovesComponent implements OnInit {

  constructor() { }
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  ngOnInit() {
  }

}
