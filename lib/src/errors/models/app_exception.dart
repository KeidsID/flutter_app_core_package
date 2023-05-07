/// It just default implementation of [Exception].
///
/// But the message is not private.
class AppException implements Exception {
  final dynamic message;

  AppException([this.message]);

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return "AppException";
    return "AppException: $message";
  }
}
