part of 'error_pages.dart';

final Map<int, _GetDefinedErrorPage> _clientErrorPagesMap = {
  400: 'Bad Request',
  401: 'Unauthorized',
  403: 'Forbidden',
  404: 'Not Found',
  422: 'Unprocessable Content',
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

class _ClientErrorPages {
  /// `400 Bad Request`
  ///
  /// Error caused by client request (e.g, malformed request syntax,
  /// invalid message framing, or deceptive reqeust routing).
  final _GetDefinedErrorPage badRequest;
  final _GetDefinedErrorPage unauthorized;
  final _GetDefinedErrorPage notFound;
  final _GetDefinedErrorPage unprocessableContent;

  const _ClientErrorPages({
    required this.badRequest,
    required this.unauthorized,
    required this.notFound,
    required this.unprocessableContent,
  });
}
