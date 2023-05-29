import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/core.dart' as core;

void main() {
  const defaultAppName = 'App Name';
  const defaultAppPrimaryColor = Colors.blue;

  group('By default, init()', () {
    setUp(() => core.init());

    test('returns the expected value for the app data', () {
      expect(core.appName, defaultAppName);
      expect(core.appPrimaryColor, defaultAppPrimaryColor);
      expect(core.appSecondaryColor, null);
    });

    test('returns the expected value for the app themes', () {
      expect(core.AppThemes.light!.brightness, Brightness.light);
      expect(core.AppThemes.light!.useMaterial3, false);
      expect(core.AppThemes.light!.colorScheme,
          getColorScheme(defaultAppPrimaryColor));

      expect(core.AppThemes.dark!.brightness, Brightness.dark);
      expect(core.AppThemes.dark!.useMaterial3, false);
      expect(
        core.AppThemes.dark!.colorScheme,
        getDarkColorScheme(defaultAppPrimaryColor),
      );
    });
  });

  group('The custom', () {
    group('init(appName, appPrimaryColor)', () {
      const userAppName = 'Flutter Demo';
      const userAppPrimaryColor = Colors.purple;

      setUp(() {
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
          getColorScheme(userAppPrimaryColor),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          getDarkColorScheme(userAppPrimaryColor),
        );
      });
    });

    group('init(appSecondaryColor, appTextTheme)', () {
      const userAppSecondaryColor = Colors.purple;
      const userAppTextTheme = TextTheme(
        displayLarge: TextStyle(fontWeight: FontWeight.w300),
      );

      setUp(() {
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
          getColorScheme(defaultAppPrimaryColor),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          getDarkColorScheme(defaultAppPrimaryColor),
        );
      });
    });

    group('init(useMaterial3: true)', () {
      const isMaterial3 = true;

      setUp(() => core.init(useMaterial3: isMaterial3));

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
          getColorScheme(defaultAppPrimaryColor),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, isMaterial3);
        expect(
          core.AppThemes.dark!.colorScheme,
          getDarkColorScheme(defaultAppPrimaryColor),
        );
      });
    });
  });
}

ColorScheme getColorScheme(Color color) {
  return ColorScheme.fromSeed(seedColor: color);
}

ColorScheme getDarkColorScheme(Color color) {
  return ColorScheme.fromSeed(
    seedColor: color,
    brightness: Brightness.dark,
  );
}
