# LibraryWorkspace
This is the main library project. Here the library is developed and tested.

### Create a new project library
```
ng generate library <library-name> --prefix=<some-prefix>
```

### Build the library
```
ng build my-library
```

### Use the library
In the app.module of our application
```
import { MyLibraryModule } from 'my-library';

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule, MyLibraryModule],  // Add it to the imports

```

### Generate new component
```
ng g c new-component --project=my-library
```

### Export the component on our library module
```
  declarations: [
    ...
    NewComponent
  ],
  exports: [
    ...
    NewComponent
  ]
```

### Add the component to the entry file
This is a redundant but necessary step to do on the library developing process.
`projects\my-library\src\public_api.ts`
```
export * from './lib/new-component/new-component.component';
```

### Watch flag
After each change on the library we need to rebuild the library.
The best way to work is runing `ng build example-ng6-lib --watch`