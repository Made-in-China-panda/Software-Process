import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-notes',
  templateUrl: './notes.component.html',
  styleUrls: ['./notes.component.css']
})
export class NotesComponent implements OnInit {

  constructor() { }
  message = {
    id: 100001,
    name: '张翼鹏',
    text: '我不知在何处呼唤着绿子',
    time: '2016-11-14',
  };
  messages = [this.message];
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  del(i) {
    this.messages.splice(i);
  }
  ngOnInit() {
  }

}
