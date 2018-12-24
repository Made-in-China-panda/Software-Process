import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { LDetailsPage } from './l-details';

@NgModule({
  declarations: [
    LDetailsPage,
  ],
  imports: [
    IonicPageModule.forChild(LDetailsPage),
  ],
})
export class LDetailsPageModule {}
