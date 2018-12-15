import { NgModule } from '@angular/core';
import { MyLibraryComponent } from './my-library.component';
import { ChildComponentComponent } from './components/child-component/child-component.component';

@NgModule({
  declarations: [MyLibraryComponent, ChildComponentComponent],
  imports: [
  ],
  exports: [MyLibraryComponent, ChildComponentComponent]
})
export class MyLibraryModule { }
