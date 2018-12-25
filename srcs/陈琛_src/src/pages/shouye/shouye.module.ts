import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ShouyePage } from './shouye';

@NgModule({
  declarations: [
    ShouyePage,
  ],
  imports: [
    IonicPageModule.forChild(ShouyePage),
  ],
})
export class ShouyePageModule {}
