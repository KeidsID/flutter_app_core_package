import 'package:flutter/material.dart';

import 'pages/client/error_400_page.dart';
import 'pages/client/error_404_page.dart';
import 'pages/client/error_422_page.dart';
import 'pages/server/error_500_page.dart';

/// List of simple error pages based on MDN Web Docs
/// (https://developer.mozilla.org/en-US/docs/Web/HTTP/Status).
abstract class ErrorPages {
  /// Client Error Responses (400-499 status codes).
  static final client = _ClientErrorPages(
    badRequest: ({key, message}) => Error400Page(key: key, message: message),
    notFound: ({key, message}) => Error404Page(key: key, message: message),
    unprocessableEntity: ({key, message}) =>
        Error422Page(key: key, message: message),
  );

  /// Server Error Responses (500-599 status codes).
  static final server = _ServerErrorPages(
    internalServerError: ({key, message}) =>
        Error500Page(key: key, message: message),
  );
}

class _ClientErrorPages {
  final Error400Page Function({Key? key, String? message}) badRequest;
  final Error404Page Function({Key? key, String? message}) notFound;
  final Error422Page Function({Key? key, String? message}) unprocessableEntity;

  const _ClientErrorPages({
    required this.badRequest,
    required this.notFound,
    required this.unprocessableEntity,
  });
}

class _ServerErrorPages {
  final Error500Page Function({Key? key, String? message}) internalServerError;

  const _ServerErrorPages({
    required this.internalServerError,
  });
}
