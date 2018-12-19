import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BaseComponent } from './components/base/base.component';
import { MainComponent } from './components/main/main.component';
import { RouterModule } from '@angular/router';
import { HttpClientModule } from '@angular/common/http';
import { UserComponent } from './components/user/user.component';
import { NotesComponent } from './components/notes/notes.component';
import { LovesComponent } from './components/loves/loves.component';
import { TuijianComponent } from './components/tuijian/tuijian.component';
import { FontsComponent } from './components/fonts/fonts.component';
import { OwnerComponent } from './components/owner/owner.component';
import { FoodsComponent } from './components/foods/foods.component';
import { VideoComponent } from './components/video/video.component';
import { TripsComponent } from './components/trips/trips.component';
import { GamesComponent } from './components/games/games.component';
import { DengluComponent } from './components/denglu/denglu.component';
import { RootComponent } from './components/root/root.component';
import { RootsComponent } from './components/roots/roots.component';
import { BaseBaseComponent } from './components/base-base/base-base.component';

@NgModule({
  declarations: [
    AppComponent,
    BaseComponent,
    MainComponent,
    UserComponent,
    NotesComponent,
    LovesComponent,
    TuijianComponent,
    FontsComponent,
    OwnerComponent,
    FoodsComponent,
    VideoComponent,
    TripsComponent,
    GamesComponent,
    DengluComponent,
    RootComponent,
    RootsComponent,
    BaseBaseComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot([
      {path: 'base/:name', component: BaseComponent , children: [
        {path: 'main', component: MainComponent},
        {path: 'user', component: UserComponent},
        {path: 'notes', component: NotesComponent},
        {path: 'loves', component: LovesComponent},
        {path: 'fonts', component: FontsComponent},
        {path: 'owner', component: OwnerComponent},
        {path: 'tuijian', component: TuijianComponent, children: [
          {path: 'foods', component: FoodsComponent},
          {path: 'videos', component: VideoComponent},
          {path: 'trips', component: TripsComponent},
          {path: 'games', component: GamesComponent},
          {path: '**', component: FoodsComponent}
      ]},
      {path: '**', component: MainComponent},
      ]},
      {path: '**', component: DengluComponent},
    ]),
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
