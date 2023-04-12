## 1.1.0 - 2023/04/13

### Added

- The common use of BuildContext as a dart extension.
  - `context.theme` (Shorthand for `Theme.of(context)`)
  - `context.mediaQuery` (Shorthand for `MediaQuery.of(context)`)
  - `context.scaffoldState` (Shorthand for `Scaffold.of(context)`)
  - Check **src/utils/extensions.dart** for more.

### Changed

- Rename the `common` folder to `src`.

## 1.0.0 - 2023/04/11

### Added

- Basic App Utils Added.

  - `appName`
  - `appPrimaryColor`
  - `appSecondaryColor`
  - `AppThemes` (Provide theme on both modes).

- Unit test for `init()` functionality.
