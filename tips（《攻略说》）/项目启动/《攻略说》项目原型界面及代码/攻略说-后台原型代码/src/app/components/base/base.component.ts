import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-base',
  templateUrl: './base.component.html',
  styleUrls: ['./base.component.css']
})
export class BaseComponent implements OnInit {



  name;

  constructor(private router: ActivatedRoute) { }

  ngOnInit() {
    this.name = this.router.snapshot.params['name'];
  }

}
