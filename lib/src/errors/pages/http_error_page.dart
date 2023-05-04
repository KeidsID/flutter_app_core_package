import 'package:core/l10n/generated/core_localizations.dart';
import 'package:core/src/errors/models/http_response_exception.dart';
import 'package:flutter/material.dart';

import '../../utils/extensions.dart';
import '../http_error_pages.dart';

@Deprecated('Use HttpErrorPage instead. Deprecated in v1.2.0.')
typedef ErrorPage = HttpErrorPage;

class HttpErrorPage extends StatelessWidget {
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
  /// pre-defined error pages, please refer to [HttpErrorPages].
  const HttpErrorPage({
    super.key,
    required this.statusCode,
    required this.name,
    this.message,
  });

  factory HttpErrorPage.fromException(HttpResponseException exception) {
    return HttpErrorPage(
      statusCode: exception.statusCode,
      name: exception.name,
      message: exception.message,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$statusCode', style: context.textTheme.displaySmall),
              Text(name, style: context.textTheme.headlineMedium),
              const Divider(),
              Text(
                message ?? '',
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
