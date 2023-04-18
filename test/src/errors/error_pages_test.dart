import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/error_page.dart';
import 'package:core/src/errors/error_pages.dart';

void main() {
  group('ErrorPages', () {
    test('.byCode() - A valid status code will return an ErrorPage', () {
      expect(ErrorPages.byCode(400), isA<ErrorPage>());
      expect(ErrorPages.byCode(500), isA<ErrorPage>());
    });

    test('.byCode() - An invalid status code will throw a RangeError', () {
      expect(() => ErrorPages.byCode(999), throwsA(isA<RangeError>()));
    });

    group('.client', () {
      const testDescTemplate =
          '- return an ErrorPage with valid statusCode and name props.';
      test('.badRequest() $testDescTemplate', () {
        expect(ErrorPages.client.badRequest().statusCode, 400);
        expect(ErrorPages.client.badRequest().name, 'Bad Request');
      });

      test('.unauthorized() $testDescTemplate', () {
        expect(ErrorPages.client.unauthorized().statusCode, 401);
        expect(ErrorPages.client.unauthorized().name, 'Unauthorized');
      });

      test('.forbidden() $testDescTemplate', () {
        expect(ErrorPages.client.forbidden().statusCode, 403);
        expect(ErrorPages.client.forbidden().name, 'Forbidden');
      });

      test('.notFound() $testDescTemplate', () {
        expect(ErrorPages.client.notFound().statusCode, 404);
        expect(ErrorPages.client.notFound().name, 'Not Found');
      });

      test('.methodNotAllowed() $testDescTemplate', () {
        expect(ErrorPages.client.methodNotAllowed().statusCode, 405);
        expect(ErrorPages.client.methodNotAllowed().name, 'Method Not Allowed');
      });

      test('.notAcceptable() $testDescTemplate', () {
        expect(ErrorPages.client.notAcceptable().statusCode, 406);
        expect(ErrorPages.client.notAcceptable().name, 'Not Acceptable');
      });

      test('.proxyAuthenticationRequired() $testDescTemplate', () {
        expect(ErrorPages.client.proxyAuthenticationRequired().statusCode, 407);
        expect(
          ErrorPages.client.proxyAuthenticationRequired().name,
          'Proxy Authentication Required',
        );
      });

      test('.requestTimeout() $testDescTemplate', () {
        expect(ErrorPages.client.requestTimeout().statusCode, 408);
        expect(ErrorPages.client.requestTimeout().name, 'Request Timeout');
      });

      test('.conflict() $testDescTemplate', () {
        expect(ErrorPages.client.conflict().statusCode, 409);
        expect(ErrorPages.client.conflict().name, 'Conflict');
      });

      test('.gone() $testDescTemplate', () {
        expect(ErrorPages.client.gone().statusCode, 410);
        expect(ErrorPages.client.gone().name, 'Gone');
      });

      test('.lengthRequired() $testDescTemplate', () {
        expect(ErrorPages.client.lengthRequired().statusCode, 411);
        expect(ErrorPages.client.lengthRequired().name, 'Length Required');
      });

      test('.preconditionFailed() $testDescTemplate', () {
        expect(ErrorPages.client.preconditionFailed().statusCode, 412);
        expect(
          ErrorPages.client.preconditionFailed().name,
          'Precondition Failed',
        );
      });

      test('.payloadTooLarge() $testDescTemplate', () {
        expect(ErrorPages.client.payloadTooLarge().statusCode, 413);
        expect(ErrorPages.client.payloadTooLarge().name, 'Payload Too Large');
      });

      test('.uriTooLong() $testDescTemplate', () {
        expect(ErrorPages.client.uriTooLong().statusCode, 414);
        expect(ErrorPages.client.uriTooLong().name, 'URI Too Long');
      });

      test('.unsupportedMediaType() $testDescTemplate', () {
        expect(ErrorPages.client.unsupportedMediaType().statusCode, 415);
        expect(
          ErrorPages.client.unsupportedMediaType().name,
          'Unsupported Media Type',
        );
      });

      test('.rangeNotSatisfiable() $testDescTemplate', () {
        expect(ErrorPages.client.rangeNotSatisfiable().statusCode, 416);
        expect(
          ErrorPages.client.rangeNotSatisfiable().name,
          'Range Not Satisfiable',
        );
      });

      test('.expectationFailed() $testDescTemplate', () {
        expect(ErrorPages.client.expectationFailed().statusCode, 417);
        expect(
          ErrorPages.client.expectationFailed().name,
          'Expectation Failed',
        );
      });

      test('.imATeapot() $testDescTemplate', () {
        expect(ErrorPages.client.imATeapot().statusCode, 418);
        expect(ErrorPages.client.imATeapot().name, "I'm a teapot");
      });

      test('.misdirectedRequest() $testDescTemplate', () {
        expect(ErrorPages.client.misdirectedRequest().statusCode, 421);
        expect(
          ErrorPages.client.misdirectedRequest().name,
          'Misdirected Request',
        );
      });

      test('.unprocessableContent() $testDescTemplate', () {
        expect(ErrorPages.client.unprocessableContent().statusCode, 422);
        expect(
          ErrorPages.client.unprocessableContent().name,
          'Unprocessable Content',
        );
      });

      test('.locked() $testDescTemplate', () {
        expect(ErrorPages.client.locked().statusCode, 423);
        expect(ErrorPages.client.locked().name, 'Locked');
      });

      test('.failedDependency() $testDescTemplate', () {
        expect(ErrorPages.client.failedDependency().statusCode, 424);
        expect(ErrorPages.client.failedDependency().name, 'Failed Dependency');
      });

      test('.upgradeRequired() $testDescTemplate', () {
        expect(ErrorPages.client.upgradeRequired().statusCode, 426);
        expect(ErrorPages.client.upgradeRequired().name, 'Upgrade Required');
      });

      test('.preconditionRequired() $testDescTemplate', () {
        expect(ErrorPages.client.preconditionRequired().statusCode, 428);
        expect(
          ErrorPages.client.preconditionRequired().name,
          'Precondition Required',
        );
      });

      test('.tooManyRequest() $testDescTemplate', () {
        expect(ErrorPages.client.tooManyRequest().statusCode, 429);
        expect(ErrorPages.client.tooManyRequest().name, 'Too Many Requests');
      });

      test('.requestHeaderFieldsTooLarge() $testDescTemplate', () {
        expect(ErrorPages.client.requestHeaderFieldsTooLarge().statusCode, 431);
        expect(
          ErrorPages.client.requestHeaderFieldsTooLarge().name,
          'Request Header Fields Too Large',
        );
      });

      test('.unavailableForLegalReasons() $testDescTemplate', () {
        expect(ErrorPages.client.unavailableForLegalReasons().statusCode, 451);
        expect(
          ErrorPages.client.unavailableForLegalReasons().name,
          'Unavailable For Legal Reasons',
        );
      });
    });

    group('.server', () {
      const testDescTemplate =
          '- return an ErrorPage with valid statusCode and name props.';
      test('.internalServerError() $testDescTemplate', () {
        expect(ErrorPages.server.internalServerError().statusCode, 500);
        expect(
          ErrorPages.server.internalServerError().name,
          'Internal Server Error',
        );
      });

      test('.notImplemented() $testDescTemplate', () {
        expect(ErrorPages.server.notImplemented().statusCode, 501);
        expect(ErrorPages.server.notImplemented().name, 'Not Implemented');
      });

      test('.badGateway() $testDescTemplate', () {
        expect(ErrorPages.server.badGateway().statusCode, 502);
        expect(ErrorPages.server.badGateway().name, 'Bad Gateway');
      });

      test('.serviceUnavailable() $testDescTemplate', () {
        expect(ErrorPages.server.serviceUnavailable().statusCode, 503);
        expect(
          ErrorPages.server.serviceUnavailable().name,
          'Service Unavailable',
        );
      });

      test('.gatewayTimeout() $testDescTemplate', () {
        expect(ErrorPages.server.gatewayTimeout().statusCode, 504);
        expect(ErrorPages.server.gatewayTimeout().name, 'Gateway Timeout');
      });

      test('.httpVersionNotSupported() $testDescTemplate', () {
        expect(ErrorPages.server.httpVersionNotSupported().statusCode, 505);
        expect(
          ErrorPages.server.httpVersionNotSupported().name,
          'HTTP Version Not Supported',
        );
      });

      test('.variantAlsoNegotiates() $testDescTemplate', () {
        expect(ErrorPages.server.variantAlsoNegotiates().statusCode, 506);
        expect(
          ErrorPages.server.variantAlsoNegotiates().name,
          'Variant Also Negotiates',
        );
      });

      test('.insufficientStorage() $testDescTemplate', () {
        expect(ErrorPages.server.insufficientStorage().statusCode, 507);
        expect(
          ErrorPages.server.insufficientStorage().name,
          'Insufficient Storage',
        );
      });

      test('.loopDetected() $testDescTemplate', () {
        expect(ErrorPages.server.loopDetected().statusCode, 508);
        expect(ErrorPages.server.loopDetected().name, 'Loop Detected');
      });

      test('.notExtended() $testDescTemplate', () {
        expect(ErrorPages.server.notExtended().statusCode, 510);
        expect(ErrorPages.server.notExtended().name, 'Not Extended');
      });

      test('.networkAuthenticationRequired() $testDescTemplate', () {
        expect(
            ErrorPages.server.networkAuthenticationRequired().statusCode, 511);
        expect(
          ErrorPages.server.networkAuthenticationRequired().name,
          'Network Authentication Required',
        );
      });
    });
  });
}
