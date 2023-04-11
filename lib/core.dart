library core;

import 'package:flutter/material.dart';

import 'common/utils/data.dart' as data;

export 'common/utils/data.dart';

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

  AppThemes.light = AppThemes._appTheme(Brightness.light);
  AppThemes.dark = AppThemes._appTheme(Brightness.dark);
}

abstract class AppThemes {
  static ThemeData? light;
  static ThemeData? dark;

  static ThemeData _appTheme(Brightness brightness) {
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
