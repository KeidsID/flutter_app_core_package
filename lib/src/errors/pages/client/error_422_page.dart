import '../error_page.dart';

class Error422Page extends ErrorPage {
  /// Page to display Unproccessable Entity (404) error
  /// with customizable message.
  const Error422Page({super.key, super.message})
      : super(statusCode: 422, name: 'Unprocessable Entity');
}
