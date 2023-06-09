part of 'http_error_pages.dart';

final Map<int, _GetHttpErrorPage> _getClientErrorPageMap = clientErrorsMap.map(
  (statusCode, name) => MapEntry(statusCode, ({
    Key? key,
    String? message,
    Widget? child,
  }) {
    return HttpErrorPage(
      key: key,
      statusCode: statusCode,
      message: message,
      child: child,
    );
  }),
);

class _ClientErrorPages {
  // Please sort the props by status code.

  /// `400 Bad Request`
  ///
  /// This error is caused by the client's request, which may include malformed
  /// request syntax, invalid message framing, or deceptive request routing.
  final _GetHttpErrorPage badRequest;

  /// `401 Unauthorized`
  ///
  /// Note that although the HTTP standard uses the term "unauthorized", the
  /// intended meaning of this response is actually "unauthenticated". In other
  /// words, the client needs to authenticate itself in order to receive the
  /// requested response.
  final _GetHttpErrorPage unauthorized;

  /// `403 Forbidden`
  ///
  /// The term "unauthorized" in its true sense refers to a situation where
  /// access to a resource is forbidden or lacking proper authentication,
  /// unlike the HTTP response code `401 Unauthorized`.
  final _GetHttpErrorPage forbidden;

  /// `404 Not Found`
  ///
  /// This error occurs when the server cannot find the requested resource. In
  /// a web browser, this typically means that the URL is not recognized. In
  /// the context of an API, it can also indicate that the endpoint is valid
  /// but the requested resource does not exist. In some cases, servers may use
  /// this response code instead of 403 Forbidden to hide the existence of a
  /// resource from unauthorized clients.
  final _GetHttpErrorPage notFound;

  /// `405 Method Not Allowed`
  ///
  /// This error occurs when the server understands the request method used by
  /// the client, but the requested method is not supported for the target
  /// resource. For instance, an API may not permit the use of `DELETE` to remove
  /// a particular resource.
  final _GetHttpErrorPage methodNotAllowed;

  /// `406 Not Acceptable`
  ///
  /// The server cannot produce a response matching the list of acceptable
  /// values defined in the request's proactive **content negotiation** headers,
  /// and that the server is unwilling to supply a default representation.
  ///
  /// Proactive content negotiation headers include:
  ///
  /// - `Accept`
  /// - `Accept-Encoding`
  /// - `Accept-Language`
  final _GetHttpErrorPage notAcceptable;

  /// `407 Proxy Authentication Required`
  ///
  /// This error is similar to `401 Unauthorized`, but in this case,
  /// authentication must be performed by a proxy.
  final _GetHttpErrorPage proxyAuthenticationRequired;

  /// `408 Request Timeout`
  ///
  /// Some servers may send this response on an idle connection to indicate
  /// that they wish to terminate the unused connection. This may occur even
  /// without any prior request from the client.
  final _GetHttpErrorPage requestTimeout;

  /// `409 Conflict`
  ///
  /// This response is sent when a request conflicts with the server's current
  /// state.
  final _GetHttpErrorPage conflict;

  /// `410 Gone`
  ///
  /// The requested content has been permanently deleted from the server, with
  /// no forwarding address.
  final _GetHttpErrorPage gone;

  /// `411 Length Required`
  ///
  /// The server rejected the request because the `Content-Length` header field
  /// is required but not defined.
  final _GetHttpErrorPage lengthRequired;

  /// `412 Precondition Failed`
  ///
  /// The client has specified certain preconditions in its headers that the
  /// server cannot fulfill.
  final _GetHttpErrorPage preconditionFailed;

  /// `413 Payload Too Large`
  ///
  /// The request entity is larger than the limits defined by the server.
  final _GetHttpErrorPage payloadTooLarge;

  /// `414 URI Too Long`
  ///
  /// The URI requested by the client is longer than the server is willing to
  /// interpret.
  final _GetHttpErrorPage uriTooLong;

  /// `415 Unsupported Media Type`
  ///
  /// The server is rejecting the request because the requested data is in a
  /// media format that is not supported.
  final _GetHttpErrorPage unsupportedMediaType;

  /// `416 Range Not Satisfiable`
  ///
  /// The server cannot fulfill the range specified by the `Range` header
  /// field, which may be due to it being outside the size of the target
  /// URI's data.
  final _GetHttpErrorPage rangeNotSatisfiable;

  /// `417 Expectation Failed`
  ///
  /// This response code means the expectation indicated by the `Expect`
  /// request header field cannot be met by the server.
  final _GetHttpErrorPage expectationFailed;

  /// `418 I'm a teapot`
  ///
  /// The server refuses to brew coffee because it is permanently a teapot. If
  /// a combined coffee/tea pot is temporarily out of coffee, it should return
  /// a `503` error instead.
  ///
  /// This error is a reference to the Hyper Text Coffee
  /// Pot Control Protocol, which is a tongue-in-cheek protocol created as an
  /// April Fools' joke in both 1998 and 2014. The protocol is not meant to be
  /// taken seriously but is instead a humorous nod to the limitations of
  /// technology and the absurdity of some error messages.
  final _GetHttpErrorPage imATeapot;

  /// `421 Misdirected Request`
  ///
  /// The server couldn't respond, possibly due to reused connection or
  /// unavailable service.
  final _GetHttpErrorPage misdirectedRequest;

  /// `422 Unprocessable Content`
  ///
  /// The request was well-formed but was unable to be followed due to semantic
  /// errors.
  final _GetHttpErrorPage unprocessableContent;

  /// `423 Locked`
  ///
  /// The resource that is being accessed is locked.
  final _GetHttpErrorPage locked;

  /// `424 Failed Dependency`
  ///
  /// The request failed due to failure of a previous request.
  final _GetHttpErrorPage failedDependency;

  /// `426 Upgrade Required`
  ///
  /// The server won't process the request with the current protocol, but may do
  /// so if the client switches to a different protocol. A 426 response is sent
  /// by the server, along with an `Upgrade` header, to indicate the required
  /// protocol(s).
  final _GetHttpErrorPage upgradeRequired;

  /// `428 Precondition Required`
  ///
  /// The server needs a conditional request, which usually means that a
  /// required precondition header, such as `If-Match`, is missing.
  final _GetHttpErrorPage preconditionRequired;

  /// `429 Too Many Requests`
  ///
  /// The user has exceeded the number of allowed requests within a specific
  /// time frame (known as "rate limiting"). The response may include a
  /// `Retry-After` header that specifies how long to wait before sending a new
  /// request.
  final _GetHttpErrorPage tooManyRequests;

  /// `431 Request Header Fields Too Large`
  ///
  /// The server is unwilling to process the request because its header fields
  /// are too large.
  final _GetHttpErrorPage requestHeaderFieldsTooLarge;

  /// `451 Unavailable For Legal Reasons`
  ///
  /// The user agent requested a resource that cannot legally be provided, such
  /// as a web page censored by a government.
  final _GetHttpErrorPage unavailableForLegalReasons;

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
    required this.misdirectedRequest,
    required this.unprocessableContent,
    required this.locked,
    required this.failedDependency,
    required this.upgradeRequired,
    required this.preconditionRequired,
    required this.tooManyRequests,
    required this.requestHeaderFieldsTooLarge,
    required this.unavailableForLegalReasons,
  });
}
