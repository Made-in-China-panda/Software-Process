import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { VenomPage } from './venom';

@NgModule({
  declarations: [
    VenomPage,
  ],
  imports: [
    IonicPageModule.forChild(VenomPage),
  ],
})
export class VenomPageModule {}
