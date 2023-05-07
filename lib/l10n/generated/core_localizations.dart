import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'core_localizations_en.dart';
import 'core_localizations_id.dart';

/// Callers can lookup localized strings with an instance of CoreLocalizations
/// returned by `CoreLocalizations.of(context)`.
///
/// Applications need to include `CoreLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/core_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: CoreLocalizations.localizationsDelegates,
///   supportedLocales: CoreLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the CoreLocalizations.supportedLocales
/// property.
abstract class CoreLocalizations {
  CoreLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static CoreLocalizations? of(BuildContext context) {
    return Localizations.of<CoreLocalizations>(context, CoreLocalizations);
  }

  static const LocalizationsDelegate<CoreLocalizations> delegate = _CoreLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// Semantic label for status code [Text] on [HttpErrorPage].
  ///
  /// In en, this message translates to:
  /// **'Status Code {code}'**
  String statusCodeSemantic(int code);

  /// Default message for `400 (Bad Request)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Error due to invalid request'**
  String get badRequestMessage;

  /// Default message for `401 (Unauthorized)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Authentications is required'**
  String get unauthorizedMessage;

  /// Default message for `403 (Forbidden)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Not allowed to be accessed'**
  String get forbiddenMessage;

  /// Default message for `404 (Not Found)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Requested content not found'**
  String get notFoundMessage;

  /// Default message for `405 (Method Not Allowed)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The requested method is not supported'**
  String get methodNotAllowedMessage;

  /// Default message for `406 (Not Acceptable)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The content negotiation headers are invalid'**
  String get notAcceptableMessage;

  /// Default message for `407 (Proxy Authentication Required)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Proxy authentication is required'**
  String get proxyAuthenticationRequiredMessage;

  /// Default message for `408 (Request Timeout)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The process is taking too long to handle'**
  String get requestTimeoutMessage;

  /// Default message for `409 (Conflict)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'There was a conflict in the server\'s state'**
  String get conflictMessage;

  /// Default message for `410 (Gone)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Requested content has been removed'**
  String get goneMessage;

  /// Default message for `411 (Length Required)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'`Content-Length` header field is required'**
  String get lengthRequiredMessage;

  /// Default message for `412 (Precondition Failed)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The server cannot handle the precondition of your request'**
  String get preconditionFailedMessage;

  /// Default message for `413 (Payload Too Large)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Your request is too large to handle'**
  String get payloadTooLargeMessage;

  /// Default message for `414 (URI Too Long)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The requested URI is longer than the server is willing to interpret'**
  String get uriTooLongMessage;

  /// Default message for `415 (Unsupported Media Type)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The media format you provided is not supported'**
  String get unsupportedMediaTypeMessage;

  /// Default message for `416 (Range Not Satisfiable)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The server cannot fulfill the range specified by the `Range` header field'**
  String get rangeNotSatisfiableMessage;

  /// Default message for `417 (Expectation Failed)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The server cannot fulfill the expectation indicated by the `Expect` header field'**
  String get expectationFailedMessage;

  /// Default message for `418 (I'm a teapot)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The server refuses the attempt to brew coffee with a teapot'**
  String get imATeapotMessage;

  /// Default message for `421 (Misdirected Request)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Your request was directed at the wrong server'**
  String get misdirectedRequestMessage;

  /// Default message for `422 (Unprocessable Content)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Could not be handled because of a semantic error'**
  String get unprocessableContentMessage;

  /// Default message for `423 (Locked)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'This content is inaccessible.'**
  String get lockedMessage;

  /// Default message for `424 (Failed Dependency)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Error due a failure of a previous request'**
  String get failedDependencyMessage;

  /// Default message for `426 (Upgrade Required)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'The server won\'t process the request with the current protocol'**
  String get upgradeRequiredMessage;

  /// Default message for `428 (Precondition Required)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Your request needs precondition headers'**
  String get preconditionRequiredMessage;

  /// Default message for `429 (Too Many Requests)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Too many requests in a short time'**
  String get tooManyRequestsMessage;

  /// Default message for `431 (Request Header Fields Too Large)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'Your request header fields are too large to handle. Check the response body for the details'**
  String get requestHeaderFieldsTooLargeMessage;

  /// Default message for `451 (Unavailable For Legal Reasons)` HTTP client error response.
  ///
  /// In en, this message translates to:
  /// **'This content is blocked by the government'**
  String get unavailableForLegalReasonsMessage;

  /// Default message for `500 (Internal Server Error)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Sorry for the inconvenience'**
  String get internalServerErrorMessage;

  /// Default message for `501 (Not Implemented)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'This service is unavailable at the moment'**
  String get notImplementedMessage;

  /// Default message for `502 (Bad Gateway)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Sorry for the inconvenience'**
  String get badGatewayMessage;

  /// Default message for `503 (Service Unavailable)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'The server is unavailable at the moment'**
  String get serviceUnavailableMessage;

  /// Default message for `504 (Gateway Timeout)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Sorry for the inconvenience'**
  String get gatewayTimeoutMessage;

  /// Default message for `505 (HTTP Version Not Supported)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'The server does not support your HTTP version'**
  String get httpVersionNotSupportedMessage;

  /// Default message for `506 (Variant Also Negotiates)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Sorry for the inconvenience'**
  String get variantAlsoNegotiatesMessage;

  /// Default message for `507 (Insufficient Storage)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'The server capacity is currently too full'**
  String get insufficientStorageMessage;

  /// Default message for `508 (Loop Detected)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Infinite loop detected while processing your request'**
  String get loopDetectedMessage;

  /// Default message for `510 (Not Extended)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Sorry for the inconvenience'**
  String get notExtendedMessage;

  /// Default message for `511 (Network Authentication Required)` HTTP server error response.
  ///
  /// In en, this message translates to:
  /// **'Network authentication is required'**
  String get networkAuthenticationRequiredMessage;
}

class _CoreLocalizationsDelegate extends LocalizationsDelegate<CoreLocalizations> {
  const _CoreLocalizationsDelegate();

  @override
  Future<CoreLocalizations> load(Locale locale) {
    return SynchronousFuture<CoreLocalizations>(lookupCoreLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_CoreLocalizationsDelegate old) => false;
}

CoreLocalizations lookupCoreLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return CoreLocalizationsEn();
    case 'id': return CoreLocalizationsId();
  }

  throw FlutterError(
    'CoreLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
