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

A package that provide basic utils like Themes and Error Handler Widget.

Great for creating lots of flutter apps as a portfolio.

## Features

- Tired of defining themes manually? just use the default ThemeData from this package.

```dart
import 'package:core/core.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName, // Provided by core.dart
      theme: AppThemes.light,
      darkTheme: AppThemes.dark, // Provided by core.dart
      ...
    );
  }
}
```

## Getting started

You just need to call `init()` once on `main()`.

```dart
import 'package:core/core.dart' as core;

void main() {
  core.init();
  ...
}
```

You can also add customization to the Theme via `init()`

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

Then you can use the themes from this package.

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
      title: core.appName,
      theme: core.AppThemes.light,
      darkTheme: core.AppThemes.dark,
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(title: Text(core.appName)),
        body: Center(child: Text('Hello World')),
      ),
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
