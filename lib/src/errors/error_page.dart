import 'package:flutter/material.dart';

import '../utils/extensions.dart';
import 'error_pages.dart';

class ErrorPage extends StatelessWidget {
  final int statusCode;
  final String name;
  final String? message;

  /// Page to display errors info.
  ///
  /// Usage example:
  ///
  /// ```dart
  /// Widget onNotFoundError({String? message}) {
  ///   return ErrorPage(
  ///     statusCode: 404,
  ///     name: 'Not Found',
  ///     message: message,
  ///   );
  /// }
  /// ```
  ///
  /// Use this method exclusively to create a custom error page. If you require
  /// pre-defined error pages, please refer to [ErrorPages]
  /// located at `src/errors/error_pages.dart`.
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
              '${message ?? 'Sorry for the inconvenience'}.',
              textAlign: TextAlign.center,
              style: context.textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
