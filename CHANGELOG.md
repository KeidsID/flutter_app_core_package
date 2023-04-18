## 1.1.0

### Added

- The common use of BuildContext as a dart extension.

  - `context.theme` (Shorthand for `Theme.of(context)`)
  - `context.mediaQuery` (Shorthand for `MediaQuery.of(context)`)
  - `context.scaffoldState` (Shorthand for `Scaffold.of(context)`)
  - Check **src/utils/extensions.dart** for more.

- Basic Pages to display error status based on MDN Web Docs.
  - `ErrorPages.client` (List of client error/400-499 status codes).
  - `ErrorPages.server` (List of server error/500-599 status codes).
  - `ErrorPages.getByCode()` (Get an ErrorPage based on the provided statusCode).

### Changed

- Rename the `common` folder to `src`.

## 1.0.0

### Added

- Basic App Utils Added.

  - `appName`
  - `appPrimaryColor`
  - `appSecondaryColor`
  - `AppThemes` (Provide theme on both modes).
