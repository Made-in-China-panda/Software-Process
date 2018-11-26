import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-fonts',
  templateUrl: './fonts.component.html',
  styleUrls: ['./fonts.component.css']
})
export class FontsComponent implements OnInit {

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
