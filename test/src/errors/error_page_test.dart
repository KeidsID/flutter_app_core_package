import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/pages/http_error_page.dart';

void main() {
  testWidgets('ErrorPage renders correctly', (tester) async {
    const statusCode = 404;
    const name = 'Not Found';
    const message = 'Sorry for the inconvenience';

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
  });
}
