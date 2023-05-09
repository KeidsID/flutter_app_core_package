import 'package:core/src/errors/data/client_errors_map.dart';
import 'package:core/src/errors/data/server_errors_map.dart';

/// Simple [Exception] implementation for HTTP Response Error.
class HttpResponseException implements Exception {
  final int statusCode;
  late String name;
  final String? message;

  /// An HTTP Response Exception.
  HttpResponseException(this.statusCode, {this.message}) {
    final errorResponsesMap = {...clientErrorsMap, ...serverErrorsMap};

    name = errorResponsesMap[statusCode] ?? 'undefined responses';
  }

  @override
  String toString() => 'HttpResponseException: $statusCode ($name)';
}
