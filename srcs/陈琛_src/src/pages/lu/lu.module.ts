import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { LuPage } from './lu';

@NgModule({
  declarations: [
    LuPage,
  ],
  imports: [
    IonicPageModule.forChild(LuPage),
  ],
})
export class LuPageModule {}
