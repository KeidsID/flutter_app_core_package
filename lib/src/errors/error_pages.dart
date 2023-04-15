import 'package:flutter/material.dart';

import 'error_page.dart';

part 'client_error_pages.dart';
part 'server_error_pages.dart';

typedef _GetDefinedErrorPage = ErrorPage Function({Key? key, String? message});

/// List of simple error pages based on MDN Web Docs
/// (https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
abstract class ErrorPages {
  /// Client Error Responses (400-499 status codes).
  static final client = _ClientErrorPages(
    badRequest: _clientErrorPagesMap[400]!,
    unauthorized: _clientErrorPagesMap[401]!,
    forbidden: _clientErrorPagesMap[403]!,
    notFound: _clientErrorPagesMap[404]!,
    methodNotAllowed: _clientErrorPagesMap[405]!,
  );

  /// Server Error Responses (500-599 status codes).
  static final server = _ServerErrorPages(
    internalServerError: _serverErrorPagesMap[500]!,
  );
}
