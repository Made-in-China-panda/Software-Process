import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SweetPage } from './sweet';

@NgModule({
  declarations: [
    SweetPage,
  ],
  imports: [
    IonicPageModule.forChild(SweetPage),
  ],
})
export class SweetPageModule {}
