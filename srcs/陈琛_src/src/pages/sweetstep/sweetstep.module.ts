import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SweetstepPage } from './sweetstep';

@NgModule({
  declarations: [
    SweetstepPage,
  ],
  imports: [
    IonicPageModule.forChild(SweetstepPage),
  ],
})
export class SweetstepPageModule {}
