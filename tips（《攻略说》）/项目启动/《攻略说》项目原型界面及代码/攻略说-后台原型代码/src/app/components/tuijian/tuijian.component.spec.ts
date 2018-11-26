import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TuijianComponent } from './tuijian.component';

describe('TuijianComponent', () => {
  let component: TuijianComponent;
  let fixture: ComponentFixture<TuijianComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TuijianComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TuijianComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
