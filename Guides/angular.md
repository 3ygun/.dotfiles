# AngularJS

<!-- TOC depthFrom:2 -->

- [Styling](#styling)
    - [Component template vs templateUrl](#component-template-vs-templateurl)
- [Debugging](#debugging)
    - [Browser Console](#browser-console)

<!-- /TOC -->

## Styling

### Component template vs templateUrl

**NOTE**: Based on [StackOverflow post](https://stackoverflow.com/questions/34673979/what-are-differences-of-using-component-template-vs-templateurl-in-angular2-type)

- Angular style guide recommends to extract into `templateUrl` if over 3 lines else `template`
- IDE support on `.html` files vs easy to find and refractor (Separate files are relative path imports...) when in-file
    - Either way if the template starts getting long consider splitting it into multiple templates


## Debugging

### Browser Console

**NOTE**: Seems the AngularJS Batarang thing isn't maintained and/or not updated beyond AngularJS 1

Read through this [article](https://hackernoon.com/everything-you-need-to-know-about-debugging-angular-applications-d308ed8a51b4) briefly.

Basically, `ng.probe($0)` accesses the `$0`th element but don't know where to go from there...
