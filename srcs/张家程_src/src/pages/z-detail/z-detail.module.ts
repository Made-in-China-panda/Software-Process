import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { ZDetailPage } from './z-detail';

@NgModule({
  declarations: [
    ZDetailPage,
  ],
  imports: [
    IonicPageModule.forChild(ZDetailPage),
  ],
})
export class ZDetailPageModule {}
