import { Component } from '@angular/core';
import { Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { TabsPage } from '../pages/tabs/tabs';
import { DengluPage } from '../pages/denglu/denglu';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  rootPage;
  key;

  constructor(platform: Platform, statusBar: StatusBar, splashScreen: SplashScreen) {
    platform.ready().then(() => {
      this.key = localStorage.getItem('key');
      if(this.key=='ok'){
        this.rootPage = TabsPage;
      }else if(this.key=='no'){
        this.rootPage = DengluPage;
      }

      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      statusBar.styleDefault();
      splashScreen.hide();
    });
  }
}
