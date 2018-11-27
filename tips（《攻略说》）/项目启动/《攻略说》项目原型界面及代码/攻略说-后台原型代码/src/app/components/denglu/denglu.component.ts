import { Component, EventEmitter, OnInit, Input, Output, SimpleChanges } from '@angular/core';




@Component({
  selector: 'app-denglu',
  templateUrl: './denglu.component.html',
  styleUrls: ['./denglu.component.css']
})
export class DengluComponent implements OnInit {
  constructor() { }


  key = true;
  @Output() dell = new EventEmitter();

  useName = ['张家程', '黄鹏', '刘英杰', '赵芊伊', '陈琛'];
  usePassword = '1433223';

  name;
  password;
  buttonKey = true;
  correct;

  del() {
    this.dell.emit(this.name);
  }

  changeName(e) {
    this.name = e.target.value;
    if (!(this.useName.indexOf(this.name) > -1)) {
      this.correct = document.createTextNode('用户名错误');
      e.target.parentNode.appendChild(this.correct);
    } else {
      e.target.parentNode.removeChild(this.correct);
    }
  }

 
  changePassword(e) {
    this.password = e.target.value;

    if (this.useName.indexOf(this.name) > -1 && this.password === this.usePassword) {
      e.target.parentNode.removeChild(this.correct);
      this.buttonKey = !this.buttonKey;
    }
    if (this.password !== this.usePassword) {
      this.correct = document.createTextNode('密码不正确');
      e.target.parentNode.appendChild(this.correct);
    } else {
      e.target.parentNode.removeChild(this.correct);
    }
  }
  ngOnInit() {
    const keys = localStorage.key(0);
    const data = localStorage.getItem(keys);

  }

}
