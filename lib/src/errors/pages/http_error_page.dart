import 'package:flutter/material.dart';

import '../../../l10n/generated/core_localizations.dart';
import '../../utils/extensions.dart';
import '../http_error_pages.dart';
import '../models/http_response_exception.dart';

@Deprecated('Use HttpErrorPage instead. Deprecated in v1.2.0.')
typedef ErrorPage = HttpErrorPage;

class HttpErrorPage extends StatelessWidget {
  final int statusCode;
  final String name;
  final String? message;

  /// Creates a Widget to be displayed below the message.
  ///
  /// Typically a [TextButton] that redirects back to the home page.
  final Widget? child;

  /// Page to display Http errors info.
  ///
  /// Usage example:
  ///
  /// ```dart
  /// Widget onNotFoundError({String? message}) {
  ///   return HttpErrorPage(
  ///     statusCode: 404,
  ///     name: 'Not Found',
  ///     message: message,
  ///   );
  /// }
  /// ```
  ///
  /// Use this method exclusively to create a custom HTTP error page. If you
  /// require pre-defined pages, please refer to [HttpErrorPages].
  const HttpErrorPage({
    super.key,
    required this.statusCode,
    required this.name,
    this.message,
    this.child,
  });

  /// Creates a [HttpErrorPage] from [HttpResponseException].
  factory HttpErrorPage.fromException(
    HttpResponseException exception, {
    Widget? child,
  }) {
    return HttpErrorPage(
      statusCode: exception.statusCode,
      name: exception.name,
      message: exception.message,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = CoreLocalizations.of(context);
    final textTheme = context.textTheme;
    String? defaultMessage;

    if (l10n != null) {
      final localizedDefaultMsgMap = _clientErrorMessageMap(l10n)
        ..addAll(_serverErrorMessageMap(l10n));

      defaultMessage = localizedDefaultMsgMap[statusCode];
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$statusCode', style: textTheme.displaySmall),
              Text(name, style: textTheme.headlineMedium),
              const Divider(),
              Text(
                message ?? defaultMessage ?? 'Sorry for the inconvenience',
                textAlign: TextAlign.center,
                style: textTheme.titleLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16.0),
              child ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Map<int, String> _clientErrorMessageMap(CoreLocalizations l10n) {
    return {
      400: l10n.badRequestMessage,
      401: l10n.unauthorizedMessage,
      403: l10n.forbiddenMessage,
      404: l10n.notFoundMessage,
      405: l10n.methodNotAllowedMessage,
      406: l10n.notAcceptableMessage,
      407: l10n.proxyAuthenticationRequiredMessage,
      408: l10n.requestTimeoutMessage,
      409: l10n.conflictMessage,
      410: l10n.goneMessage,
      411: l10n.lengthRequiredMessage,
      412: l10n.preconditionFailedMessage,
      413: l10n.payloadTooLargeMessage,
      414: l10n.uriTooLongMessage,
      415: l10n.unsupportedMediaTypeMessage,
      416: l10n.rangeNotSatisfiableMessage,
      417: l10n.expectationFailedMessage,
      418: l10n.imATeapotMessage,
      421: l10n.misdirectedRequestMessage,
      422: l10n.unprocessableContentMessage,
      423: l10n.lockedMessage,
      424: l10n.failedDependencyMessage,
      426: l10n.upgradeRequiredMessage,
      428: l10n.preconditionFailedMessage,
      429: l10n.tooManyRequestsMessage,
      431: l10n.requestHeaderFieldsTooLargeMessage,
      451: l10n.unavailableForLegalReasonsMessage,
    };
  }

  Map<int, String> _serverErrorMessageMap(CoreLocalizations l10n) {
    return {
      500: l10n.internalServerErrorMessage,
      501: l10n.notImplementedMessage,
      502: l10n.badGatewayMessage,
      503: l10n.serviceUnavailableMessage,
      504: l10n.gatewayTimeoutMessage,
      505: l10n.httpVersionNotSupportedMessage,
      506: l10n.variantAlsoNegotiatesMessage,
      507: l10n.insufficientStorageMessage,
      508: l10n.loopDetectedMessage,
      510: l10n.notExtendedMessage,
      511: l10n.networkAuthenticationRequiredMessage,
    };
  }
}
