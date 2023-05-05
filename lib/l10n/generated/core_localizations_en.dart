import 'core_localizations.dart';

/// The translations for English (`en`).
class CoreLocalizationsEn extends CoreLocalizations {
  CoreLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String statusCodeSemantic(int code) {
    return 'Status Code $code';
  }

  @override
  String get badRequestMessage => 'Error due to invalid request';

  @override
  String get unauthorizedMessage => 'Authentications is required';

  @override
  String get forbiddenMessage => 'Not allowed to be accessed';

  @override
  String get notFoundMessage => 'Requested content not found';

  @override
  String get methodNotAllowedMessage => 'The requested method is not supported';

  @override
  String get notAcceptableMessage => 'The content negotiation headers are invalid';

  @override
  String get proxyAuthenticationRequiredMessage => 'Proxy authentication is required';

  @override
  String get requestTimeoutMessage => 'The process is taking too long to handle';

  @override
  String get conflictMessage => 'There was a conflict in the server\'s state';

  @override
  String get goneMessage => 'Requested content has been removed';

  @override
  String get lengthRequiredMessage => '`Content-Length` header field is required';

  @override
  String get preconditionFailedMessage => 'The server cannot handle the precondition of your request';

  @override
  String get payloadTooLargeMessage => 'Your request is too large to handle';

  @override
  String get uriTooLongMessage => 'The requested URI is longer than the server is willing to interpret';

  @override
  String get unsupportedMediaTypeMessage => 'The media format you provided is not supported';

  @override
  String get rangeNotSatisfiableMessage => 'The server cannot fulfill the range specified by the `Range` header field';

  @override
  String get expectationFailedMessage => 'The server cannot fulfill the expectation indicated by the `Expect` header field';

  @override
  String get imATeapotMessage => 'The server refuses the attempt to brew coffee with a teapot';

  @override
  String get misdirectedRequestMessage => 'Your request was directed at the wrong server';

  @override
  String get unprocessableContentMessage => 'Could not be handled because of a semantic error';

  @override
  String get lockedMessage => 'This content is inaccessible.';

  @override
  String get failedDependencyMessage => 'Error due a failure of a previous request';

  @override
  String get upgradeRequiredMessage => 'The server won\'t process the request with the current protocol';

  @override
  String get preconditionRequiredMessage => 'Your request needs precondition headers';

  @override
  String get tooManyRequestsMessage => 'Too many requests in a short time';

  @override
  String get requestHeaderFieldsTooLargeMessage => 'Your request header fields are too large to handle. Check the response body for the details';

  @override
  String get unavailableForLegalReasonsMessage => 'This content is blocked by the government';

  @override
  String get internalServerErrorMessage => 'Sorry for the inconvenience';

  @override
  String get notImplementedMessage => 'This service is unavailable at the moment';

  @override
  String get badGatewayMessage => 'Sorry for the inconvenience';

  @override
  String get serviceUnavailableMessage => 'The server is unavailable at the moment';

  @override
  String get gatewayTimeoutMessage => 'Sorry for the inconvenience';

  @override
  String get httpVersionNotSupportedMessage => 'The server does not support your HTTP version';

  @override
  String get variantAlsoNegotiatesMessage => 'Sorry for the inconvenience';

  @override
  String get insufficientStorageMessage => 'The server capacity is currently too full';

  @override
  String get loopDetectedMessage => 'Infinite loop detected while processing your request';

  @override
  String get notExtendedMessage => 'Sorry for the inconvenience';

  @override
  String get networkAuthenticationRequiredMessage => 'Network authentication is required';
}
