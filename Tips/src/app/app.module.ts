import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { AboutPage } from '../pages/about/about';
import { ContactPage } from '../pages/contact/contact';
import { HomePage } from '../pages/home/home';
import { MoviePage } from '../pages/movie/movie';
import { TabsPage } from '../pages/tabs/tabs';
import { SearchPage } from '../pages/search/search';
import { SweetPage } from '../pages/sweet/sweet';
import { ChuanPage} from '../pages/chuan/chuan';
import { LuPage} from '../pages/lu/lu';
import { SuPage} from '../pages/su/su';
import { YuePage} from '../pages/yue/yue';
import { FoodstepPage} from '../pages/foodstep/foodstep';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

@NgModule({
  declarations: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    MoviePage,
    TabsPage,
    SearchPage,
    SweetPage,
    ChuanPage,
    LuPage,
    SuPage,
    YuePage,
    FoodstepPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    MoviePage,
    TabsPage,
    SearchPage,
    SweetPage,
    ChuanPage,
    LuPage,
    SuPage,
    YuePage,
    FoodstepPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
