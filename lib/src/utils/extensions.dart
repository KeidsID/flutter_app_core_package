import 'package:flutter/material.dart';

extension CommonCtxUsage on BuildContext {
  /// Get [ThemeData] from the closest [Theme] instance that encloses the given
  /// context.
  ///
  /// It's shorthand for `Theme.of(context)`
  ThemeData get theme => Theme.of(this);

  /// Check current ThemeMode based on the [ThemeData.brightness]
  /// from the given context.
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Get [TextTheme] based on the [ThemeData.textTheme]
  /// from the given context
  ///
  /// It's shorthand for `Theme.of(context).textTheme`
  TextTheme get textTheme => theme.textTheme;

  /// Get [MediaQueryData] from the closest instance of this class that encloses the given
  /// context.
  ///
  /// It's shorthand for `MediaQuery.of(context)`
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Get the size of the media in logical pixels
  /// (e.g, the size of the screen).
  ///
  /// It's shorthand for `MediaQuery.of(context).size`
  Size get screenSize => mediaQuery.size;

  /// Finds the [ScaffoldState] from the closest instance of this class that
  /// encloses the given context.
  ///
  /// It's shorthand for `Scaffold.of(context)`
  ScaffoldState get scaffoldState => Scaffold.of(this);
}
