import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-roots',
  templateUrl: './roots.component.html',
  styleUrls: ['./roots.component.css']
})
export class RootsComponent implements OnInit {


  constructor() { }

key;
  denglu(i) {
    this.key = i;
  }
  ngOnInit() {

  }

}
