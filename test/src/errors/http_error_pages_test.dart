import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/pages/http_error_page.dart';
import 'package:core/src/errors/http_error_pages.dart';

void main() {
  group('HttpErrorPages', () {
    test('.byCode() - A valid status code will return an HttpErrorPage', () {
      expect(HttpErrorPages.byCode(400), isA<HttpErrorPage>());
      expect(HttpErrorPages.byCode(500), isA<HttpErrorPage>());
    });

    test('.byCode() - An invalid status code will throw a RangeError', () {
      expect(() => HttpErrorPages.byCode(999), throwsA(isA<RangeError>()));
    });

    group('.client', () {
      const testDescTemplate =
          '- return a HttpErrorPage with valid statusCode and name props.';

      testWidgets(
        '.anyMethod(child) - return a HttpErrorPage with a child',
        (tester) async {
          const childKey = ValueKey('unit-test');

          final widget = MaterialApp(
            home: HttpErrorPages.client.badRequest(
              child: TextButton(
                key: childKey,
                onPressed: () {},
                child: const Text('Go to Home Page'),
              ),
            ),
          );
          await tester.pumpWidget(widget);

          expect(find.byKey(childKey), findsOneWidget);
        },
      );
      test('.badRequest() $testDescTemplate', () {
        expect(HttpErrorPages.client.badRequest().statusCode, 400);
        expect(HttpErrorPages.client.badRequest().name, 'Bad Request');
      });

      test('.unauthorized() $testDescTemplate', () {
        expect(HttpErrorPages.client.unauthorized().statusCode, 401);
        expect(HttpErrorPages.client.unauthorized().name, 'Unauthorized');
      });

      test('.forbidden() $testDescTemplate', () {
        expect(HttpErrorPages.client.forbidden().statusCode, 403);
        expect(HttpErrorPages.client.forbidden().name, 'Forbidden');
      });

      test('.notFound() $testDescTemplate', () {
        expect(HttpErrorPages.client.notFound().statusCode, 404);
        expect(HttpErrorPages.client.notFound().name, 'Not Found');
      });

      test('.methodNotAllowed() $testDescTemplate', () {
        expect(HttpErrorPages.client.methodNotAllowed().statusCode, 405);
        expect(HttpErrorPages.client.methodNotAllowed().name,
            'Method Not Allowed');
      });

      test('.notAcceptable() $testDescTemplate', () {
        expect(HttpErrorPages.client.notAcceptable().statusCode, 406);
        expect(HttpErrorPages.client.notAcceptable().name, 'Not Acceptable');
      });

      test('.proxyAuthenticationRequired() $testDescTemplate', () {
        expect(HttpErrorPages.client.proxyAuthenticationRequired().statusCode,
            407);
        expect(
          HttpErrorPages.client.proxyAuthenticationRequired().name,
          'Proxy Authentication Required',
        );
      });

      test('.requestTimeout() $testDescTemplate', () {
        expect(HttpErrorPages.client.requestTimeout().statusCode, 408);
        expect(HttpErrorPages.client.requestTimeout().name, 'Request Timeout');
      });

      test('.conflict() $testDescTemplate', () {
        expect(HttpErrorPages.client.conflict().statusCode, 409);
        expect(HttpErrorPages.client.conflict().name, 'Conflict');
      });

      test('.gone() $testDescTemplate', () {
        expect(HttpErrorPages.client.gone().statusCode, 410);
        expect(HttpErrorPages.client.gone().name, 'Gone');
      });

      test('.lengthRequired() $testDescTemplate', () {
        expect(HttpErrorPages.client.lengthRequired().statusCode, 411);
        expect(HttpErrorPages.client.lengthRequired().name, 'Length Required');
      });

      test('.preconditionFailed() $testDescTemplate', () {
        expect(HttpErrorPages.client.preconditionFailed().statusCode, 412);
        expect(
          HttpErrorPages.client.preconditionFailed().name,
          'Precondition Failed',
        );
      });

      test('.payloadTooLarge() $testDescTemplate', () {
        expect(HttpErrorPages.client.payloadTooLarge().statusCode, 413);
        expect(
            HttpErrorPages.client.payloadTooLarge().name, 'Payload Too Large');
      });

      test('.uriTooLong() $testDescTemplate', () {
        expect(HttpErrorPages.client.uriTooLong().statusCode, 414);
        expect(HttpErrorPages.client.uriTooLong().name, 'URI Too Long');
      });

      test('.unsupportedMediaType() $testDescTemplate', () {
        expect(HttpErrorPages.client.unsupportedMediaType().statusCode, 415);
        expect(
          HttpErrorPages.client.unsupportedMediaType().name,
          'Unsupported Media Type',
        );
      });

      test('.rangeNotSatisfiable() $testDescTemplate', () {
        expect(HttpErrorPages.client.rangeNotSatisfiable().statusCode, 416);
        expect(
          HttpErrorPages.client.rangeNotSatisfiable().name,
          'Range Not Satisfiable',
        );
      });

      test('.expectationFailed() $testDescTemplate', () {
        expect(HttpErrorPages.client.expectationFailed().statusCode, 417);
        expect(
          HttpErrorPages.client.expectationFailed().name,
          'Expectation Failed',
        );
      });

      test('.imATeapot() $testDescTemplate', () {
        expect(HttpErrorPages.client.imATeapot().statusCode, 418);
        expect(HttpErrorPages.client.imATeapot().name, "I'm a teapot");
      });

      test('.misdirectedRequest() $testDescTemplate', () {
        expect(HttpErrorPages.client.misdirectedRequest().statusCode, 421);
        expect(
          HttpErrorPages.client.misdirectedRequest().name,
          'Misdirected Request',
        );
      });

      test('.unprocessableContent() $testDescTemplate', () {
        expect(HttpErrorPages.client.unprocessableContent().statusCode, 422);
        expect(
          HttpErrorPages.client.unprocessableContent().name,
          'Unprocessable Content',
        );
      });

      test('.locked() $testDescTemplate', () {
        expect(HttpErrorPages.client.locked().statusCode, 423);
        expect(HttpErrorPages.client.locked().name, 'Locked');
      });

      test('.failedDependency() $testDescTemplate', () {
        expect(HttpErrorPages.client.failedDependency().statusCode, 424);
        expect(
            HttpErrorPages.client.failedDependency().name, 'Failed Dependency');
      });

      test('.upgradeRequired() $testDescTemplate', () {
        expect(HttpErrorPages.client.upgradeRequired().statusCode, 426);
        expect(
            HttpErrorPages.client.upgradeRequired().name, 'Upgrade Required');
      });

      test('.preconditionRequired() $testDescTemplate', () {
        expect(HttpErrorPages.client.preconditionRequired().statusCode, 428);
        expect(
          HttpErrorPages.client.preconditionRequired().name,
          'Precondition Required',
        );
      });

      test('.tooManyRequest() $testDescTemplate', () {
        expect(HttpErrorPages.client.tooManyRequests().statusCode, 429);
        expect(
            HttpErrorPages.client.tooManyRequests().name, 'Too Many Requests');
      });

      test('.requestHeaderFieldsTooLarge() $testDescTemplate', () {
        expect(HttpErrorPages.client.requestHeaderFieldsTooLarge().statusCode,
            431);
        expect(
          HttpErrorPages.client.requestHeaderFieldsTooLarge().name,
          'Request Header Fields Too Large',
        );
      });

      test('.unavailableForLegalReasons() $testDescTemplate', () {
        expect(
            HttpErrorPages.client.unavailableForLegalReasons().statusCode, 451);
        expect(
          HttpErrorPages.client.unavailableForLegalReasons().name,
          'Unavailable For Legal Reasons',
        );
      });
    });

    group('.server', () {
      const testDescTemplate =
          '- return an HttpErrorPage with valid statusCode and name props.';

      testWidgets(
        '.anyMethod(child) - return a HttpErrorPage with a child',
        (tester) async {
          const childKey = ValueKey('unit-test');

          final widget = MaterialApp(
            home: HttpErrorPages.server.internalServerError(
              child: TextButton(
                key: childKey,
                onPressed: () {},
                child: const Text('Go to Home Page'),
              ),
            ),
          );
          await tester.pumpWidget(widget);

          expect(find.byKey(childKey), findsOneWidget);
        },
      );
      test('.internalServerError() $testDescTemplate', () {
        expect(HttpErrorPages.server.internalServerError().statusCode, 500);
        expect(
          HttpErrorPages.server.internalServerError().name,
          'Internal Server Error',
        );
      });

      test('.notImplemented() $testDescTemplate', () {
        expect(HttpErrorPages.server.notImplemented().statusCode, 501);
        expect(HttpErrorPages.server.notImplemented().name, 'Not Implemented');
      });

      test('.badGateway() $testDescTemplate', () {
        expect(HttpErrorPages.server.badGateway().statusCode, 502);
        expect(HttpErrorPages.server.badGateway().name, 'Bad Gateway');
      });

      test('.serviceUnavailable() $testDescTemplate', () {
        expect(HttpErrorPages.server.serviceUnavailable().statusCode, 503);
        expect(
          HttpErrorPages.server.serviceUnavailable().name,
          'Service Unavailable',
        );
      });

      test('.gatewayTimeout() $testDescTemplate', () {
        expect(HttpErrorPages.server.gatewayTimeout().statusCode, 504);
        expect(HttpErrorPages.server.gatewayTimeout().name, 'Gateway Timeout');
      });

      test('.httpVersionNotSupported() $testDescTemplate', () {
        expect(HttpErrorPages.server.httpVersionNotSupported().statusCode, 505);
        expect(
          HttpErrorPages.server.httpVersionNotSupported().name,
          'HTTP Version Not Supported',
        );
      });

      test('.variantAlsoNegotiates() $testDescTemplate', () {
        expect(HttpErrorPages.server.variantAlsoNegotiates().statusCode, 506);
        expect(
          HttpErrorPages.server.variantAlsoNegotiates().name,
          'Variant Also Negotiates',
        );
      });

      test('.insufficientStorage() $testDescTemplate', () {
        expect(HttpErrorPages.server.insufficientStorage().statusCode, 507);
        expect(
          HttpErrorPages.server.insufficientStorage().name,
          'Insufficient Storage',
        );
      });

      test('.loopDetected() $testDescTemplate', () {
        expect(HttpErrorPages.server.loopDetected().statusCode, 508);
        expect(HttpErrorPages.server.loopDetected().name, 'Loop Detected');
      });

      test('.notExtended() $testDescTemplate', () {
        expect(HttpErrorPages.server.notExtended().statusCode, 510);
        expect(HttpErrorPages.server.notExtended().name, 'Not Extended');
      });

      test('.networkAuthenticationRequired() $testDescTemplate', () {
        expect(HttpErrorPages.server.networkAuthenticationRequired().statusCode,
            511);
        expect(
          HttpErrorPages.server.networkAuthenticationRequired().name,
          'Network Authentication Required',
        );
      });
    });
  });
}
