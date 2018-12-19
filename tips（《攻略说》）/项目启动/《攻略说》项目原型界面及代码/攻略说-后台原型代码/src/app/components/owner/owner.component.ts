import { Component, OnInit } from '@angular/core';
import { HttpClient,HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-owner',
  templateUrl: './owner.component.html',
  styleUrls: ['./owner.component.css']
})
export class OwnerComponent implements OnInit {
  headers=new HttpHeaders({
    'Content-Type': 'application/x-www-form-urlencoded'

});

  key;
  constructor(private http: HttpClient) { }
  numbers;
  users ;
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  content = 'admin'
  ngOnInit() {
    
      this.http.get('http://192.168.56.144:8080/'+this.content).subscribe((data) => { // 监听
        this.numbers = data;
        console.log(this.numbers);
        this.users = this.numbers;
      });

    }
    // tslint:disable-next-line:use-life-cycle-interface
    ngAfterContentInit() {

    }
    changeId(e, i) {
      // tslint:disable-next-line:no-unused-expression
      this.users[i].id = e.target.value;
     }
    changeName(e, i) {
      // tslint:disable-next-line:no-unused-expression
      this.users[i].name = e.target.value;
    }
    changePhone(e, i) {
      // tslint:disable-next-line:no-unused-expression
      this.users[i].phone = e.target.value;
     }
     changeEmail(e, i) {
      // tslint:disable-next-line:no-unused-expression
      this.users[i].email = e.target.value;
     }
     add(i) {
      console.log(this.users[i]);
      this.http.post('http://192.168.148.144:8080/'+this.content,this.users[i],{headers:this.headers}).subscribe(data => {
        console.log(data);
      });  
    }
    del(i) {
      this.http.delete('http://192.168.56.144:8080/'+this.content+'id'+this.users[i].id,{headers:this.headers}).subscribe(data => {});
      this.users.splice(i,1);
      
      this.key = i;
    }
}
