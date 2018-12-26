import { Component } from '@angular/core';

import { HomePage } from '../home/home';
import { ModalController } from 'ionic-angular';
import { ZhanghaoPage } from '../zhanghao/zhanghao';
import { DianpingPage } from '../dianping/dianping';
import { LovePage } from '../love/love';


@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = LovePage;
  tab3Root = DianpingPage;
  tab4Root = ZhanghaoPage;
  constructor(public modalCtrl: ModalController,) {

  }
  
}
