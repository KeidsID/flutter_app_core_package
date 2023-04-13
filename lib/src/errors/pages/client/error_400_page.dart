import '../error_page.dart';

class Error400Page extends ErrorPage {
  /// Page to display Bad Request (404) error
  /// with customizable message.
  const Error400Page({super.key, super.message})
      : super(statusCode: 400, name: 'Bad Request');
}
