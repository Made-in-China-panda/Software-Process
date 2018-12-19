import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute } from '@angular/router' ;
@Component({
  selector: 'app-tuijian',
  templateUrl: './tuijian.component.html',
  styleUrls: ['./tuijian.component.css']
})
export class TuijianComponent implements OnInit {

  constructor(private http: HttpClient,private router:ActivatedRoute) { }
  focus(e) {
    e.target.placeholder = '';
  }
  blur(e) {
    e.target.placeholder = ' 请输入关键字查找';
  }
  ngOnInit() {
  }

}
