part of 'http_error_pages.dart';

final Map<int, _GetDefinedErrorPage> _clientErrorsMap = {
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
  418: "I'm a teapot",
  421: "Misdirected Request",
  422: "Unprocessable Content",
  423: "Locked",
  424: "Failed Dependency",
  426: "Upgrade Required",
  428: "Precondition Required",
  429: "Too Many Requests",
  431: "Request Header Fields Too Large",
  451: "Unavailable For Legal Reasons",
}.map(
  (statusCode, name) => MapEntry(
    statusCode,
    ({Key? key, String? message}) {
      if (message == null) {
        return HttpErrorPage(
          key: key,
          statusCode: statusCode,
          name: name,
        );
      }

      return HttpErrorPage(
        key: key,
        statusCode: statusCode,
        name: name,
        message: message,
      );
    },
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
  /// The request entity is larger than the limits defined by the server.
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
  /// The server cannot fulfill the range specified by the `Range` header
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
  /// a `503` error instead.
  ///
  /// This error is a reference to the Hyper Text Coffee
  /// Pot Control Protocol, which is a tongue-in-cheek protocol created as an
  /// April Fools' joke in both 1998 and 2014. The protocol is not meant to be
  /// taken seriously but is instead a humorous nod to the limitations of
  /// technology and the absurdity of some error messages.
  final _GetDefinedErrorPage imATeapot;

  /// `421 Misdirected Request`
  ///
  /// The server couldn't respond, possibly due to reused connection or
  /// unavailable service.
  final _GetDefinedErrorPage misdirectedRequest;

  /// `422 Unprocessable Content`
  ///
  /// The request was well-formed but was unable to be followed due to semantic
  /// errors.
  final _GetDefinedErrorPage unprocessableContent;

  /// `423 Locked`
  ///
  /// The resource that is being accessed is locked.
  final _GetDefinedErrorPage locked;

  /// `424 Failed Dependency`
  ///
  /// The request failed due to failure of a previous request.
  final _GetDefinedErrorPage failedDependency;

  /// `426 Upgrade Required`
  ///
  /// The server won't process the request with the current protocol, but may do
  /// so if the client switches to a different protocol. A 426 response is sent
  /// by the server, along with an `Upgrade` header, to indicate the required
  /// protocol(s).
  final _GetDefinedErrorPage upgradeRequired;

  /// `428 Precondition Required`
  ///
  /// The server needs a conditional request, which usually means that a
  /// required precondition header, such as `If-Match`, is missing.
  final _GetDefinedErrorPage preconditionRequired;

  /// `429 Too Many Requests`
  ///
  /// The user has exceeded the number of allowed requests within a specific
  /// time frame (known as "rate limiting"). The response may include a
  /// `Retry-After` header that specifies how long to wait before sending a new
  /// request.
  final _GetDefinedErrorPage tooManyRequests;

  /// `431 Request Header Fields Too Large`
  ///
  /// The server is unwilling to process the request because its header fields
  /// are too large.
  final _GetDefinedErrorPage requestHeaderFieldsTooLarge;

  /// `451 Unavailable For Legal Reasons`
  ///
  /// The user agent requested a resource that cannot legally be provided, such
  /// as a web page censored by a government.
  final _GetDefinedErrorPage unavailableForLegalReasons;

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
