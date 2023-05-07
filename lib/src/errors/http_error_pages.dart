import 'package:flutter/material.dart';

import 'data/client_errors_map.dart';
import 'data/server_errors_map.dart';
import 'pages/http_error_page.dart';

part 'client_error_pages.dart';
part 'server_error_pages.dart';

typedef _GetHttpErrorPage = HttpErrorPage Function({
  Key? key,
  String? message,
  Widget? child,
});

@Deprecated('Use HttpErrorPages instead. Deprecated in v1.2.1.')
typedef ErrorPages = HttpErrorPages;

/// List of simple HTTP error pages based on MDN Web Docs
/// (https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
///
/// Use it the same way you use [Colors].
///
/// ```dart
/// HttpErrorPages.client.notFound(); // return HttpErrorPage widget
/// ```
abstract class HttpErrorPages {
  /// An object with properties based on HTTP Client Error Responses
  /// (status codes 400-499).
  ///
  /// Each property is a method to return an [HttpErrorPage] with the same
  /// parameters as creating the page with the constructor
  /// (but without the `statusCode` property).
  static final client = _ClientErrorPages(
    badRequest: _getClientErrorPageMap[400]!,
    unauthorized: _getClientErrorPageMap[401]!,
    forbidden: _getClientErrorPageMap[403]!,
    notFound: _getClientErrorPageMap[404]!,
    methodNotAllowed: _getClientErrorPageMap[405]!,
    notAcceptable: _getClientErrorPageMap[406]!,
    proxyAuthenticationRequired: _getClientErrorPageMap[407]!,
    requestTimeout: _getClientErrorPageMap[408]!,
    conflict: _getClientErrorPageMap[409]!,
    gone: _getClientErrorPageMap[410]!,
    lengthRequired: _getClientErrorPageMap[411]!,
    preconditionFailed: _getClientErrorPageMap[412]!,
    payloadTooLarge: _getClientErrorPageMap[413]!,
    uriTooLong: _getClientErrorPageMap[414]!,
    unsupportedMediaType: _getClientErrorPageMap[415]!,
    rangeNotSatisfiable: _getClientErrorPageMap[416]!,
    expectationFailed: _getClientErrorPageMap[417]!,
    imATeapot: _getClientErrorPageMap[418]!,
    misdirectedRequest: _getClientErrorPageMap[421]!,
    unprocessableContent: _getClientErrorPageMap[422]!,
    locked: _getClientErrorPageMap[423]!,
    failedDependency: _getClientErrorPageMap[424]!,
    upgradeRequired: _getClientErrorPageMap[426]!,
    preconditionRequired: _getClientErrorPageMap[428]!,
    tooManyRequests: _getClientErrorPageMap[429]!,
    requestHeaderFieldsTooLarge: _getClientErrorPageMap[431]!,
    unavailableForLegalReasons: _getClientErrorPageMap[451]!,
  );

  /// An object with properties based on HTTP Server Error Responses
  /// (status codes 500-599).
  ///
  /// Each property is a method to return an [HttpErrorPage] with the same
  /// parameters as creating the page with the constructor
  /// (but without the `statusCode` property).
  static final server = _ServerErrorPages(
    internalServerError: _getServerErrorPageMap[500]!,
    notImplemented: _getServerErrorPageMap[501]!,
    badGateway: _getServerErrorPageMap[502]!,
    serviceUnavailable: _getServerErrorPageMap[503]!,
    gatewayTimeout: _getServerErrorPageMap[504]!,
    httpVersionNotSupported: _getServerErrorPageMap[505]!,
    variantAlsoNegotiates: _getServerErrorPageMap[506]!,
    insufficientStorage: _getServerErrorPageMap[507]!,
    loopDetected: _getServerErrorPageMap[508]!,
    notExtended: _getServerErrorPageMap[510]!,
    networkAuthenticationRequired: _getServerErrorPageMap[511]!,
  );

  /// Get a [HttpErrorPage] based on the provided statusCode. If the statusCode is
  /// not found, an [RangeError] will be thrown.
  @Deprecated(
      'Use HttpErrorPage directly instead. Deprecated in v1.2.1. Will be removed in the major update')
  static HttpErrorPage byCode(
    int statusCode, {
    Key? key,
    String? message,
    Widget? child,
  }) {
    final errorPagesMap = {
      ..._getClientErrorPageMap,
      ..._getServerErrorPageMap,
    };

    if (errorPagesMap[statusCode] == null) {
      throw RangeError('Status Code Not Found');
    }

    return errorPagesMap[statusCode]!(key: key, message: message, child: child);
  }
}
