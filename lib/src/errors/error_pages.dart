import 'package:flutter/material.dart';

import 'error_page.dart';

part 'client_error_pages.dart';
part 'server_error_pages.dart';

typedef _GetDefinedErrorPage = ErrorPage Function({Key? key, String? message});

/// List of simple error pages based on MDN Web Docs
/// (https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
abstract class ErrorPages {
  /// Client Error Responses (400-499 status codes).
  ///
  /// Usage example:
  /// ```dart
  /// Widget onRequestTimeout() {
  ///   return ErrorPages.client.requestTimeout(message: 'My msg');
  /// }
  /// ```
  static final client = _ClientErrorPages(
    badRequest: _clientErrorPagesMap[400]!,
    unauthorized: _clientErrorPagesMap[401]!,
    forbidden: _clientErrorPagesMap[403]!,
    notFound: _clientErrorPagesMap[404]!,
    methodNotAllowed: _clientErrorPagesMap[405]!,
    notAcceptable: _clientErrorPagesMap[406]!,
    proxyAuthenticationRequired: _clientErrorPagesMap[407]!,
    requestTimeout: _clientErrorPagesMap[408]!,
    conflict: _clientErrorPagesMap[409]!,
    gone: _clientErrorPagesMap[410]!,
    lengthRequired: _clientErrorPagesMap[411]!,
    preconditionFailed: _clientErrorPagesMap[412]!,
    payloadTooLarge: _clientErrorPagesMap[413]!,
    uriTooLong: _clientErrorPagesMap[414]!,
    unsupportedMediaType: _clientErrorPagesMap[415]!,
    rangeNotSatisfiable: _clientErrorPagesMap[416]!,
    expectationFailed: _clientErrorPagesMap[417]!,
    imATeapot: _clientErrorPagesMap[418]!,
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
    internalServerError: _serverErrorPagesMap[500]!,
  );

  /// Get an ErrorPage based on the provided statusCode. If the statusCode is
  /// not found, an [RangeError] will be thrown.
  static ErrorPage getByCode(int statusCode, {Key? key, String? message}) {
    final errorPagesMap = _clientErrorPagesMap..addAll(_serverErrorPagesMap);

    if (errorPagesMap[statusCode] == null) {
      throw RangeError('Status Code Not Found');
    }

    return errorPagesMap[statusCode]!(key: key, message: message);
  }
}