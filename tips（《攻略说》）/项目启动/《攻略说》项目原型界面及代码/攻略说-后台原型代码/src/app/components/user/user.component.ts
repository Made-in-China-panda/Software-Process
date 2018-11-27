import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {

  constructor() { }
  // tslint:disable-next-line:member-ordering
  my = {
    img: '',
    id: 100001,
    name: '张翼鹏',
    brithday: '1997-11-10',
    style: '我不知在何处呼唤着绿子',
  };
  users = [this.my];
  newUser: any;
  del(i) {
    this.users.splice(i);
  }
  add(i) {
      console.log(this.users);
  }
  changeId(e, i) {
   // tslint:disable-next-line:no-unused-expression
   this.users[i].id = e.target.value;
  }
  changeName(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].name = e.target.value;
   }
   changeStyle(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].style = e.target.value;
   }
   changeBrithday(e, i) {
    // tslint:disable-next-line:no-unused-expression
    this.users[i].brithday = e.target.value;
   }

  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  ngOnInit() {
  }

}
