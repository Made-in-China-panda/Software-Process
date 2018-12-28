import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { FoodstepPage } from './foodstep';

@NgModule({
  declarations: [
    FoodstepPage,
  ],
  imports: [
    IonicPageModule.forChild(FoodstepPage),
  ],
})
export class FoodstepPageModule {}
