import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SuPage } from './su';

@NgModule({
  declarations: [
    SuPage,
  ],
  imports: [
    IonicPageModule.forChild(SuPage),
  ],
})
export class SuPageModule {}
