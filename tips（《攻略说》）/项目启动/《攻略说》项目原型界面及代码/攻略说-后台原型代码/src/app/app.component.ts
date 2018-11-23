import { Component } from '@angular/core';
import { getQueryValue } from '@angular/core/src/view/query';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title: string = 'ToDoList';
  txt: string;
  ttt: string;
  arr: string[] = [];
  arr1: string[] = [];
  button: number = 0;
  button1:number = 0;
  fun1(){
    if (this.txt) {
      this.button++;
      this.arr.push(this.txt);
      this.ttt = this.txt;
      this.txt = '';
    }
  }
  fun5(e) {
    if ( this.txt && e.keyCode == 13) {
      this.button++;
      this.arr.push(this.txt);
      this.ttt = this.txt;
      this.txt = '';
    }
  }
  fun2(i) {
    this.button--;
    this.button1++;
    this.ttt = this.arr[i];
    this.arr.splice(i, 1);
    this.arr1.push(this.ttt);
  }
  fun3(ii){
    this.button1--;
    this.arr1.splice(ii, 1);
  }
  fun4(){
    
  }
}
