import 'package:flutter/material.dart';

import '../error_pages.dart';
import '../../utils/extensions.dart';

class ErrorPage extends StatelessWidget {
  final int statusCode;
  final String name;
  final String? message;

  /// Page to display errors info.
  ///
  /// Usage example:
  ///
  /// ```dart
  /// Widget onNotFoundError() {
  ///   return ErrorPage(statusCode: 404, name: 'Not Found');
  /// }
  /// ```
  ///
  /// Use this only to create a custom error page. If you want
  /// already defined error pages, check [ErrorPages]  at
  /// `src/errors/error_pages.dart`.
  const ErrorPage({
    super.key,
    required this.statusCode,
    required this.name,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$statusCode', style: context.textTheme.headline3),
            Text(name, style: context.textTheme.headline4),
            const Divider(),
            Text(
              message ?? 'Sorry for the inconvenience.',
              textAlign: TextAlign.center,
              style: context.textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
