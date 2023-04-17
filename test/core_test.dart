import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/core.dart' as core;

void main() {
  const defaultAppName = 'App Name';
  const defaultAppPrimaryColor = Colors.blue;

  group('By default, init()', () {
    setUpAll(() => core.init());

    test('returns the expected value for the app data', () {
      expect(core.appName, defaultAppName);
      expect(core.appPrimaryColor, defaultAppPrimaryColor);
      expect(core.appSecondaryColor, null);
    });

    test('returns the expected value for the app themes', () {
      expect(core.AppThemes.light!.brightness, Brightness.light);
      expect(core.AppThemes.light!.useMaterial3, false);
      expect(
        core.AppThemes.light!.colorScheme,
        getColorScheme(defaultAppPrimaryColor, Brightness.light),
      );

      expect(core.AppThemes.dark!.brightness, Brightness.dark);
      expect(core.AppThemes.dark!.useMaterial3, false);
      expect(
        core.AppThemes.dark!.colorScheme,
        getColorScheme(defaultAppPrimaryColor, Brightness.dark),
      );
    });
  });

  group('The custom', () {
    group('init(appName, appPrimaryColor)', () {
      const userAppName = 'Flutter Demo';
      const userAppPrimaryColor = Colors.purple;

      setUpAll(() {
        core.init(
          appName: userAppName,
          appPrimaryColor: userAppPrimaryColor,
        );
      });

      test('returns the expected value for the app data', () {
        expect(core.appName, userAppName);
        expect(core.appPrimaryColor, userAppPrimaryColor);
        expect(core.appSecondaryColor, null);
      });

      test('returns the expected value for the app themes', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, false);
        expect(
          core.AppThemes.light!.colorScheme,
          getColorScheme(userAppPrimaryColor, Brightness.light),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          getColorScheme(userAppPrimaryColor, Brightness.dark),
        );
      });
    });

    group('init(appSecondaryColor, appTextTheme)', () {
      const userAppSecondaryColor = Colors.purple;
      const userAppTextTheme = TextTheme(
        headline1: TextStyle(fontWeight: FontWeight.w300),
      );

      setUpAll(() {
        core.init(
          appSecondaryColor: userAppSecondaryColor,
          appTextTheme: userAppTextTheme,
        );
      });

      test('returns the expected value for the app data', () {
        expect(core.appName, defaultAppName);
        expect(core.appPrimaryColor, defaultAppPrimaryColor);
        expect(core.appSecondaryColor, userAppSecondaryColor);
      });

      test('returns the expected value for the app themes', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, false);
        expect(
          core.AppThemes.light!.colorScheme,
          getColorScheme(defaultAppPrimaryColor, Brightness.light),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          getColorScheme(defaultAppPrimaryColor, Brightness.dark),
        );
      });
    });

    group('init(useMaterial3: true)', () {
      const isMaterial3 = true;

      setUpAll(() => core.init(useMaterial3: isMaterial3));

      test('returns the expected value for the app data', () {
        expect(core.appName, defaultAppName);
        expect(core.appPrimaryColor, defaultAppPrimaryColor);
        expect(core.appSecondaryColor, null);
      });

      test('returns the expected value for the app themes', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, isMaterial3);
        expect(
          core.AppThemes.light!.colorScheme,
          getColorScheme(defaultAppPrimaryColor, Brightness.light),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, isMaterial3);
        expect(
          core.AppThemes.dark!.colorScheme,
          getColorScheme(defaultAppPrimaryColor, Brightness.dark),
        );
      });
    });
  });
}

ColorScheme getColorScheme(Color color, Brightness brightness) {
  return ColorScheme.fromSeed(seedColor: color, brightness: brightness);
}
