import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/pages/http_error_page.dart';
import 'package:core/src/errors/http_error_pages.dart';

void main() {
  group('HttpErrorPages', () {
    test('.byCode() - A valid status code will return an HttpErrorPage', () {
      expect(HttpErrorPages.byCode(500), isA<HttpErrorPage>());
      expect(HttpErrorPages.byCode(500), isA<HttpErrorPage>());
    });

    test('.byCode() - An invalid status code will throw a RangeError', () {
      expect(() => HttpErrorPages.byCode(999), throwsA(isA<RangeError>()));
    });

    group('.client', () {
      testWidgets(
        '.anyMethod() - return a HttpErrorPage with expected info',
        (tester) async {
          const statusCode = 400;
          const name = 'Bad Request';
          const pageKey = ValueKey('http-error-page');

          final widget = MaterialApp(
            home: HttpErrorPages.client.badRequest(key: pageKey),
          );
          await tester.pumpWidget(widget);

          expect(find.text('$statusCode'), findsOneWidget);
          expect(find.text(name), findsOneWidget);
          expect(find.byKey(pageKey), findsOneWidget);
        },
      );
      testWidgets(
        '.anyMethod(message) - return a HttpErrorPage with a custom message',
        (tester) async {
          const message = 'custom-message';

          final widget = MaterialApp(
            home: HttpErrorPages.client.unauthorized(message: message),
          );
          await tester.pumpWidget(widget);

          expect(find.text(message), findsOneWidget);
        },
      );
      testWidgets(
        '.anyMethod(child) - return a HttpErrorPage with a child',
        (tester) async {
          const childKey = ValueKey('unit-test');

          final widget = MaterialApp(
            home: HttpErrorPages.client.forbidden(
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
    });

    group('.server', () {
      testWidgets(
        '.anyMethod() - return a HttpErrorPage with expected info',
        (tester) async {
          const statusCode = 500;
          const name = 'Internal Server Error';
          const pageKey = ValueKey('http-error-page');

          final widget = MaterialApp(
            home: HttpErrorPages.server.internalServerError(key: pageKey),
          );
          await tester.pumpWidget(widget);

          expect(find.text('$statusCode'), findsOneWidget);
          expect(find.text(name), findsOneWidget);
          expect(find.byKey(pageKey), findsOneWidget);
        },
      );
      testWidgets(
        '.anyMethod(message) - return a HttpErrorPage with a custom message',
        (tester) async {
          const message = 'custom-message';

          final widget = MaterialApp(
            home: HttpErrorPages.server.notImplemented(message: message),
          );
          await tester.pumpWidget(widget);

          expect(find.text(message), findsOneWidget);
        },
      );
      testWidgets(
        '.anyMethod(child) - return a HttpErrorPage with a child',
        (tester) async {
          const childKey = ValueKey('unit-test');

          final widget = MaterialApp(
            home: HttpErrorPages.server.badGateway(
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
    });
  });
}
