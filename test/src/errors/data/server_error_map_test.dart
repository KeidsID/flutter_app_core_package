import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/data/server_errors_map.dart';

void main() {
  test('Returns the name of the HTTP Server Error status code', () {
    expect(serverErrorsMap[500], 'Internal Server Error');
    expect(serverErrorsMap[501], 'Not Implemented');
    expect(serverErrorsMap[502], 'Bad Gateway');
    expect(serverErrorsMap[503], 'Service Unavailable');
    expect(serverErrorsMap[504], 'Gateway Timeout');
    expect(serverErrorsMap[505], 'HTTP Version Not Supported');
    expect(serverErrorsMap[506], 'Variant Also Negotiates');
    expect(serverErrorsMap[507], 'Insufficient Storage');
    expect(serverErrorsMap[508], 'Loop Detected');
    expect(serverErrorsMap[510], 'Not Extended');
    expect(serverErrorsMap[511], 'Network Authentication Required');
  });
}
