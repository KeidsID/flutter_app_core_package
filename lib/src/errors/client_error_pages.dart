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
  412: 'Precondition Failed',
  413: 'Payload Too Large',
  414: 'URI Too Long',
  415: 'Unsupported Media Type',
  416: 'Range Not Satisfiable',
  417: 'Expectation Failed',
  418: "I'm a teapot"
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
  /// This error is similar to `401 Unauthorized`, but in this case,
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

  /// `412 Precondition Failed`
  ///
  /// The client has specified certain preconditions in its headers that the
  /// server cannot fulfill.
  final _GetDefinedErrorPage preconditionFailed;

  /// `413 Payload Too Large`
  ///
  /// Request entity is larger than limits defined by server.
  final _GetDefinedErrorPage payloadTooLarge;

  /// `414 URI Too Long`
  ///
  /// The URI requested by the client is longer than the server is willing to
  /// interpret.
  final _GetDefinedErrorPage uriTooLong;

  /// `415 Unsupported Media Type`
  ///
  /// The server is rejecting the request because the requested data is in a
  /// media format that is not supported.
  final _GetDefinedErrorPage unsupportedMediaType;

  /// `416 Range Not Satisfiable`
  ///
  /// The request cannot fulfill the range specified by the `Range` header
  /// field, which may be due to it being outside the size of the target
  /// URI's data.
  final _GetDefinedErrorPage rangeNotSatisfiable;

  /// `417 Expectation Failed`
  ///
  /// This response code means the expectation indicated by the `Expect`
  /// request header field cannot be met by the server.
  final _GetDefinedErrorPage expectationFailed;

  /// `418 I'm a teapot`
  ///
  /// The server refuses to brew coffee because it is permanently a teapot. If
  /// a combined coffee/tea pot is temporarily out of coffee, it should return
  /// a 503 error instead. This error is a reference to the Hyper Text Coffee
  /// Pot Control Protocol, which is a tongue-in-cheek protocol created as an
  /// April Fools' joke in both 1998 and 2014. The protocol is not meant to be
  /// taken seriously but is instead a humorous nod to the limitations of
  /// technology and the absurdity of some error messages.
  final _GetDefinedErrorPage imATeapot;

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
    required this.preconditionFailed,
    required this.payloadTooLarge,
    required this.uriTooLong,
    required this.unsupportedMediaType,
    required this.rangeNotSatisfiable,
    required this.expectationFailed,
    required this.imATeapot,
  });
}
