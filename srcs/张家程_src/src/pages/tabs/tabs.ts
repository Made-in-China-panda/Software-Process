import { Component } from '@angular/core';

import { AboutPage } from '../about/about';
import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { MoviePage } from '../movie/movie';
import { ModalController } from 'ionic-angular';
import { ZhanghaoPage } from '../zhanghao/zhanghao';
import { DianpingPage } from '../dianping/dianping';
import { ShoucangPage } from '../shoucang/shoucang';


@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = ShoucangPage;
  tab3Root = DianpingPage;
  tab4Root = ZhanghaoPage;
  constructor(public modalCtrl: ModalController,) {

  }
  
}
