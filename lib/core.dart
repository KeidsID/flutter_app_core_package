library core;

import 'package:flutter/material.dart';

import 'src/utils/data.dart' as data;

export 'src/errors/http_error_pages.dart';
export 'src/utils/data.dart';
export 'src/utils/extensions.dart';

TextTheme? _appTextTheme;
bool? _useMaterial3;

/// Providing basic data for the package.
void init({
  String? appName,
  Color? appPrimaryColor,
  Color? appSecondaryColor,
  TextTheme? appTextTheme,
  bool? useMaterial3,
}) {
  data.appName = appName ?? 'App Name';
  data.appPrimaryColor = appPrimaryColor ?? Colors.blue;
  data.appSecondaryColor = appSecondaryColor;
  _appTextTheme = appTextTheme;
  _useMaterial3 = useMaterial3;

  AppThemes.light = AppThemes._getAppTheme(Brightness.light);
  AppThemes.dark = AppThemes._getAppTheme(Brightness.dark);
}

abstract class AppThemes {
  static ThemeData? light;
  static ThemeData? dark;

  static ThemeData _getAppTheme(Brightness brightness) {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: data.appPrimaryColor,
        brightness: brightness,
      ),
      textTheme: _appTextTheme,
      useMaterial3: _useMaterial3,
    );
  }
}
