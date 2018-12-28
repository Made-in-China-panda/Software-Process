import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FoodImgPage } from './food-img';

@NgModule({
  declarations: [
    FoodImgPage,
  ],
  imports: [
    IonicPageModule.forChild(FoodImgPage),
  ],
})
export class FoodImgPageModule {}
