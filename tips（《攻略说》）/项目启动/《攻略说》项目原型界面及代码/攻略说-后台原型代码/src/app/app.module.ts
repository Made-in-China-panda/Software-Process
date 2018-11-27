import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BaseComponent } from './components/base/base.component';
import { MainComponent } from './components/main/main.component';
import { RouterModule } from '@angular/router';
import { UserComponent } from './components/user/user.component';
import { NotesComponent } from './components/notes/notes.component';
import { LovesComponent } from './components/loves/loves.component';
import { TuijianComponent } from './components/tuijian/tuijian.component';
import { FontsComponent } from './components/fonts/fonts.component';
import { OwnerComponent } from './components/owner/owner.component';

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
    OwnerComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot([
      {path: 'main', component: MainComponent},
      {path: 'user', component: UserComponent},
      {path: 'notes', component: NotesComponent},
      {path: 'loves', component: LovesComponent},
      {path: 'tuijian', component: TuijianComponent},
      {path: 'fonts', component: FontsComponent},
      {path: 'owner', component: OwnerComponent},
      {path: '**', component: MainComponent},
    ]),
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
