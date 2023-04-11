import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/core.dart' as core;

void main() {
  const defaultAppName = 'App Name';
  const defaultAppPrimaryColor = Colors.blue;

  group('On Default Init:', () {
    setUpAll(() => core.init());

    test('Expected Data value', () {
      expect(core.appName, defaultAppName);
      expect(core.appPrimaryColor, defaultAppPrimaryColor);
      expect(core.appSecondaryColor, null);
    });

    test('Expected ThemeData value', () {
      expect(core.AppThemes.light!.brightness, Brightness.light);
      expect(core.AppThemes.light!.useMaterial3, false);
      expect(
        core.AppThemes.light!.colorScheme,
        ColorScheme.fromSeed(
          seedColor: defaultAppPrimaryColor,
          brightness: Brightness.light,
        ),
      );

      expect(core.AppThemes.dark!.brightness, Brightness.dark);
      expect(core.AppThemes.dark!.useMaterial3, false);
      expect(
        core.AppThemes.dark!.colorScheme,
        ColorScheme.fromSeed(
          seedColor: defaultAppPrimaryColor,
          brightness: Brightness.dark,
        ),
      );
    });
  });

  group('On Custom Init:', () {
    group('init(appName, appPrimaryColor):', () {
      const userAppName = 'Flutter Demo';
      const userAppPrimaryColor = Colors.purple;

      setUpAll(() {
        core.init(
          appName: userAppName,
          appPrimaryColor: userAppPrimaryColor,
        );
      });

      test('Expected Data value', () {
        expect(core.appName, userAppName);
        expect(core.appPrimaryColor, userAppPrimaryColor);
        expect(core.appSecondaryColor, null);
      });

      test('Expected ThemeData value', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, false);
        expect(
          core.AppThemes.light!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: userAppPrimaryColor,
            brightness: Brightness.light,
          ),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: userAppPrimaryColor,
            brightness: Brightness.dark,
          ),
        );
      });
    });

    group('init(appSecondaryColor, appTextTheme):', () {
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

      test('Expected Data value', () {
        expect(core.appName, defaultAppName);
        expect(core.appPrimaryColor, defaultAppPrimaryColor);
        expect(core.appSecondaryColor, userAppSecondaryColor);
      });

      test('Expected ThemeData value', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, false);
        expect(
          core.AppThemes.light!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: defaultAppPrimaryColor,
            brightness: Brightness.light,
          ),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, false);
        expect(
          core.AppThemes.dark!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: defaultAppPrimaryColor,
            brightness: Brightness.dark,
          ),
        );
      });
    });

    group('init(useMaterial3: true):', () {
      const isMaterial3 = true;

      setUpAll(() => core.init(useMaterial3: isMaterial3));

      test('Expected Data value', () {
        expect(core.appName, defaultAppName);
        expect(core.appPrimaryColor, defaultAppPrimaryColor);
        expect(core.appSecondaryColor, null);
      });

      test('Expected ThemeData value', () {
        expect(core.AppThemes.light!.brightness, Brightness.light);
        expect(core.AppThemes.light!.useMaterial3, isMaterial3);
        expect(
          core.AppThemes.light!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: defaultAppPrimaryColor,
            brightness: Brightness.light,
          ),
        );

        expect(core.AppThemes.dark!.brightness, Brightness.dark);
        expect(core.AppThemes.dark!.useMaterial3, isMaterial3);
        expect(
          core.AppThemes.dark!.colorScheme,
          ColorScheme.fromSeed(
            seedColor: defaultAppPrimaryColor,
            brightness: Brightness.dark,
          ),
        );
      });
    });
  });
}
