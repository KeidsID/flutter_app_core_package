part of 'error_pages.dart';

final Map<int, _GetDefinedErrorPage> _serverErrorPagesMap = {
  500: 'Internal Server Error',
}.map(
  (statusCode, name) => MapEntry(
    statusCode,
    ({Key? key, String? message}) => ErrorPage(
      key: key,
      statusCode: statusCode,
      name: name,
      message: message,
    ),
  ),
);

class _ServerErrorPages {
  /// `400 Bad Request`
  ///
  /// Error caused by client request (e.g, malformed request syntax,
  /// invalid message framing, or deceptive reqeust routing).
  final _GetDefinedErrorPage internalServerError;

  const _ServerErrorPages({
    required this.internalServerError,
  });
}
