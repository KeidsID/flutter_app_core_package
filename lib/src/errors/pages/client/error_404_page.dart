import '../error_page.dart';

class Error404Page extends ErrorPage {
  /// Page to display Not Found (404) error
  /// with customizable message.
  const Error404Page({super.key, super.message})
      : super(statusCode: 404, name: 'Not Found');
}
