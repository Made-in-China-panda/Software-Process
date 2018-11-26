import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-tuijian',
  templateUrl: './tuijian.component.html',
  styleUrls: ['./tuijian.component.css']
})
export class TuijianComponent implements OnInit {

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
