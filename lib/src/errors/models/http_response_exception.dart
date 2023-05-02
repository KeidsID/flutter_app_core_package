/// Simple [Exception] implementation for HTTP Response Error.
class HttpResponseException implements Exception {
  final int statusCode;
  final String name;
  final String? message;

  /// An HTTP Response Exception.
  HttpResponseException(this.statusCode, this.name, {this.message});

  @override
  String toString() => 'HttpResponseException: $statusCode ($name)';
}
