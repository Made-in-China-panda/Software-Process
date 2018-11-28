import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-owner',
  templateUrl: './owner.component.html',
  styleUrls: ['./owner.component.css']
})
export class OwnerComponent implements OnInit {

  constructor() { }
  my = {
    tel:'1522222222',
    id: 100001,
    name: '张翼鹏',
    email: '286801343@qq.com',
    style: '我不知在何处呼唤着绿子',
  };
  users = [this.my];
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  ngOnInit() {
  }

}
