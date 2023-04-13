import '../error_page.dart';

class Error500Page extends ErrorPage {
  /// Page to display Internal Server Error (500) error
  /// with customizable message.
  const Error500Page({super.key, super.message})
      : super(statusCode: 500, name: 'Internal Server Error');
}
