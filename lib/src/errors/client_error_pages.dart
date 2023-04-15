part of 'error_pages.dart';

final Map<int, _GetDefinedErrorPage> _clientErrorPagesMap = {
  400: 'Bad Request',
  401: 'Unauthorized',
  403: 'Forbidden',
  404: 'Not Found',
  405: 'Method Not Allowed',
  406: 'Not Acceptable',
  407: 'Proxy Authentication Required',
  408: 'Request Timeout',
  409: 'Conflict',
  410: 'Gone',
  411: 'Length Required',
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
  // Please sort the props by status code.

  /// `400 Bad Request`
  ///
  /// This error is caused by the client's request, which may include malformed
  /// request syntax, invalid message framing, or deceptive request routing.
  final _GetDefinedErrorPage badRequest;

  /// `401 Unauthorized`
  ///
  /// Note that although the HTTP standard uses the term "unauthorized", the
  /// intended meaning of this response is actually "unauthenticated". In other
  /// words, the client needs to authenticate itself in order to receive the
  /// requested response.
  final _GetDefinedErrorPage unauthorized;

  /// `403 Forbidden`
  ///
  /// The term "unauthorized" in its true sense refers to a situation where
  /// access to a resource is forbidden or lacking proper authentication,
  /// unlike the HTTP response code `401 Unauthorized`.
  final _GetDefinedErrorPage forbidden;

  /// `404 Not Found`
  ///
  /// This error occurs when the server cannot find the requested resource. In
  /// a web browser, this typically means that the URL is not recognized. In
  /// the context of an API, it can also indicate that the endpoint is valid
  /// but the requested resource does not exist. In some cases, servers may use
  /// this response code instead of 403 Forbidden to hide the existence of a
  /// resource from unauthorized clients.
  final _GetDefinedErrorPage notFound;

  /// `405 Method Not Allowed`
  ///
  /// This error occurs when the server understands the request method used by
  /// the client, but the requested method is not supported for the target
  /// resource. For instance, an API may not permit the use of `DELETE` to remove
  /// a particular resource.
  final _GetDefinedErrorPage methodNotAllowed;

  /// '406 Not Acceptable`
  ///
  /// This response is sent by the server when it cannot find any content that
  /// matches the criteria specified by the user agent, even after performing
  /// server-driven content negotiation.
  final _GetDefinedErrorPage notAcceptable;

  /// `407 Proxy Authentication Required`
  ///
  /// This error is similar to 401 Unauthorized, but in this case,
  /// authentication must be performed by a proxy.
  final _GetDefinedErrorPage proxyAuthenticationRequired;

  /// `408 Request Timeout`
  ///
  /// Some servers may send this response on an idle connection to indicate
  /// that they wish to terminate the unused connection. This may occur even
  /// without any prior request from the client.
  final _GetDefinedErrorPage requestTimeout;

  /// `409 Conflict`
  ///
  /// This response is sent when a request conflicts with the server's current
  /// state.
  final _GetDefinedErrorPage conflict;

  /// `410 Gone`
  ///
  /// The requested content has been permanently deleted from the server, with
  /// no forwarding address.
  final _GetDefinedErrorPage gone;

  /// `411 Length Required`
  ///
  /// The server rejected the request because the `Content-Length` header field
  /// is required but not defined.
  final _GetDefinedErrorPage lengthRequired;

  const _ClientErrorPages({
    required this.badRequest,
    required this.unauthorized,
    required this.forbidden,
    required this.notFound,
    required this.methodNotAllowed,
    required this.notAcceptable,
    required this.proxyAuthenticationRequired,
    required this.requestTimeout,
    required this.conflict,
    required this.gone,
    required this.lengthRequired,
  });
}
