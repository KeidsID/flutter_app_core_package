<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

![CI status](https://api.codemagic.io/apps/643d42ab38ef8225c156a310/643d42ab38ef8225c156a30f/status_badge.svg)

A package that provide basic utils like Themes, common BuildContext extension
and simple Error Page widget.

Great for creating lots of flutter apps as a portfolio.

## Features

- Tired of defining themes manually? just use the default ThemeData from this
  package:

  ```dart
  import 'package:core/core.dart' as core;

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: core.appName,
        theme: core.AppThemes.light,
        darkTheme: core.AppThemes.dark,
        ...
      );
    }
  }
  ```

- Need shorthand for the common use of context? Try the BuildContext
  extension from this package:

  ```dart
  import 'package:core/core.dart';

  class MyWidget extends StatelessWidget {
    const MyWidget({super.key});

    @override
    Widget build(BuildContext context) {
      // Shorthand for Theme.of(context)
      context.theme;

      // Shorthand for MediaQuery.of(context)
      context.mediaQuery;

      // Shorthand for Scaffold.of(context)
      context.scaffoldState;

      // Check "src/utils/extensions.dart" for more

      return Container();
    }
  }
  ```

- Need a simple page to display error info? try `ErrorPages` from the package:

  ```dart
  import 'package:core/core.dart';

  // Will display status code 400 with 'Bad Request' text below it.
  ErrorPages.client.badRequest();

  // Will display status code 500 with 'Internal Server Error' text below it.
  ErrorPages.server.internalServerError();

  // Will display page based on requested status code.
  //
  // The Example below will display status code 404 with
  // 'Not Found' text below it.
  ErrorPages.byCode(404);

  // You can also add custom message to the page
  // (Default message is 'Sorry for the inconvenience').
  //
  // The message displayed below statusCode and name.
  ErrorPages.client.notFound(message: 'The Page You Requested Not Found');
  ErrorPages.byCode(403, message: 'You are not allowed to access this');

  // See preview below for page visual.
  ```

  ### ErrorPages previews:

  ![ErrorPages preview (403 -  Forbidden)](readme_assets/error_pages_preview/403.png)

## Getting started

1. Add the package to your dependencies:

   ```yaml
   dependencies:
     core:
       git:
         url: https://github.com/KeidsID/flutter_app_core_package.git
   ```

2. Then, you just need to call `init()` once in `main()`:

   ```dart
   import 'package:core/core.dart' as core;

   void main() {
     core.init();
     ...
   }
   ```

   You can also customize the Theme via `init()`:

   ```dart
   import 'package:flutter/material.dart';
   import 'package:core/core.dart' as core;

   void main() {
     core.init(
       appName: 'My App Name',
       appPrimaryColor: Colors.amber,
       useMaterial3: true,
     );
     ...
   }
   ```

Now, you are ready to use this package's utilities.

## Usage

main.dart

```dart
import 'package:flutter/material.dart';
import 'package:core/core.dart' as core;

void main() {
  core.init(
    appName: 'Flutter Demo',
    useMaterial3: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: core.appName, // "Flutter Demo"
      // Both theme used material 3
      theme: core.AppThemes.light, 
      darkTheme: core.AppThemes.dark,
      themeMode: ThemeMode.system,
      // Simple page to display 404 Not Found
      home: core.ErrorPages.client.notFound(), 
    );
  }
}
```

<!--
## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
-->
