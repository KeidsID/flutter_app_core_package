import 'package:flutter/material.dart';

import 'models/http_response_exception.dart';
import 'pages/http_error_page.dart';

part 'client_error_pages.dart';
part 'server_error_pages.dart';

typedef _GetDefinedErrorPage = HttpErrorPage Function(
    {Key? key, String? message});

@Deprecated('Deprecated in 1.2.0. Use HttpErrorPages instead')
typedef ErrorPages = HttpErrorPages;

/// List of simple error pages based on MDN Web Docs
/// (https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
abstract class HttpErrorPages {
  /// Client Error Responses (400-499 status codes).
  ///
  /// Usage example:
  /// ```dart
  /// Widget onRequestTimeout() {
  ///   return ErrorPages.client.requestTimeout(message: 'My msg');
  /// }
  /// ```
  static final client = _ClientErrorPages(
    badRequest: _clientErrorsMap[400]!,
    unauthorized: _clientErrorsMap[401]!,
    forbidden: _clientErrorsMap[403]!,
    notFound: _clientErrorsMap[404]!,
    methodNotAllowed: _clientErrorsMap[405]!,
    notAcceptable: _clientErrorsMap[406]!,
    proxyAuthenticationRequired: _clientErrorsMap[407]!,
    requestTimeout: _clientErrorsMap[408]!,
    conflict: _clientErrorsMap[409]!,
    gone: _clientErrorsMap[410]!,
    lengthRequired: _clientErrorsMap[411]!,
    preconditionFailed: _clientErrorsMap[412]!,
    payloadTooLarge: _clientErrorsMap[413]!,
    uriTooLong: _clientErrorsMap[414]!,
    unsupportedMediaType: _clientErrorsMap[415]!,
    rangeNotSatisfiable: _clientErrorsMap[416]!,
    expectationFailed: _clientErrorsMap[417]!,
    imATeapot: _clientErrorsMap[418]!,
    misdirectedRequest: _clientErrorsMap[421]!,
    unprocessableContent: _clientErrorsMap[422]!,
    locked: _clientErrorsMap[423]!,
    failedDependency: _clientErrorsMap[424]!,
    upgradeRequired: _clientErrorsMap[426]!,
    preconditionRequired: _clientErrorsMap[428]!,
    tooManyRequests: _clientErrorsMap[429]!,
    requestHeaderFieldsTooLarge: _clientErrorsMap[431]!,
    unavailableForLegalReasons: _clientErrorsMap[451]!,
  );

  /// Server Error Responses (500-599 status codes).
  ///
  /// Usage example:
  /// ```dart
  /// Widget onInternalServerError() {
  ///   return ErrorPages.client.internalServerError(message: 'My msg');
  /// }
  /// ```
  static final server = _ServerErrorPages(
    internalServerError: _serverErrorsMap[500]!,
    notImplemented: _serverErrorsMap[501]!,
    badGateway: _serverErrorsMap[502]!,
    serviceUnavailable: _serverErrorsMap[503]!,
    gatewayTimeout: _serverErrorsMap[504]!,
    httpVersionNotSupported: _serverErrorsMap[505]!,
    variantAlsoNegotiates: _serverErrorsMap[506]!,
    insufficientStorage: _serverErrorsMap[507]!,
    loopDetected: _serverErrorsMap[508]!,
    notExtended: _serverErrorsMap[510]!,
    networkAuthenticationRequired: _serverErrorsMap[511]!,
  );

  /// Get an ErrorPage based on the provided statusCode. If the statusCode is
  /// not found, an [RangeError] will be thrown.
  static HttpErrorPage byCode(int statusCode, {Key? key, String? message}) {
    final errorPagesMap = _clientErrorsMap..addAll(_serverErrorsMap);

    if (errorPagesMap[statusCode] == null) {
      throw RangeError('Status Code Not Found');
    }

    return errorPagesMap[statusCode]!(key: key, message: message);
  }
}
