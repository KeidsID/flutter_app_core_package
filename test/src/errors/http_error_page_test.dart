import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/l10n/generated/core_localizations.dart';
import 'package:core/src/errors/pages/http_error_page.dart';

void main() {
  const defaultMessage = 'Sorry for the inconvenience';

  testWidgets('Non-localized HttpErrorPage renders correctly', (tester) async {
    const statusCode = 404;
    const name = 'Not Found';

    const widget = MaterialApp(
      home: HttpErrorPage(
        statusCode: statusCode,
        name: name,
      ),
    );
    await tester.pumpWidget(widget);

    expect(find.text('$statusCode'), findsOneWidget);

    expect(find.text(name), findsOneWidget);

    expect(find.text(defaultMessage), findsOneWidget);
  });

  testWidgets('Localized HttpErrorPage renders correctly', (tester) async {
    const statusCode = 404;
    const name = 'Not Found';
    const message = 'Requested content not found';

    const widget = MaterialApp(
      localizationsDelegates: CoreLocalizations.localizationsDelegates,
      supportedLocales: CoreLocalizations.supportedLocales,
      locale: Locale('en'),
      home: HttpErrorPage(
        statusCode: statusCode,
        name: name,
      ),
    );
    await tester.pumpWidget(widget);

    expect(find.text('$statusCode'), findsOneWidget);

    expect(find.text(name), findsOneWidget);

    expect(find.text(message), findsOneWidget);
  });

  testWidgets(
    'Custom message on HttpErrorPage renders correctly',
    (tester) async {
      const statusCode = 404;
      const name = 'Not Found';
      const message = 'Custom message';

      const widget = MaterialApp(
        home: HttpErrorPage(
          statusCode: statusCode,
          name: name,
          message: message,
        ),
      );
      await tester.pumpWidget(widget);

      expect(find.text('$statusCode'), findsOneWidget);

      expect(find.text(name), findsOneWidget);

      expect(find.text(message), findsOneWidget);
    },
  );

  testWidgets('Child on HttpErrorPage renders correctly', (tester) async {
    const statusCode = 404;
    const name = 'Not Found';
    const childKey = ValueKey('unit-test');

    final widget = MaterialApp(
      home: HttpErrorPage(
        statusCode: statusCode,
        name: name,
        child: TextButton(
          key: childKey,
          onPressed: () {},
          child: const Text('Go to Home Page'),
        ),
      ),
    );
    await tester.pumpWidget(widget);

    expect(find.text('$statusCode'), findsOneWidget);

    expect(find.text(name), findsOneWidget);

    expect(find.byKey(childKey), findsOneWidget);
  });
}
