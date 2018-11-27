import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BaseBaseComponent } from './base-base.component';

describe('BaseBaseComponent', () => {
  let component: BaseBaseComponent;
  let fixture: ComponentFixture<BaseBaseComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BaseBaseComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BaseBaseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
