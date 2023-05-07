import 'package:flutter_test/flutter_test.dart';

import 'package:core/src/errors/data/client_errors_map.dart';

void main() {
  test('Returns the name of the HTTP Client Error status code', () {
    expect(clientErrorsMap[400], 'Bad Request');
    expect(clientErrorsMap[401], 'Unauthorized');
    expect(clientErrorsMap[403], 'Forbidden');
    expect(clientErrorsMap[404], 'Not Found');
    expect(clientErrorsMap[405], 'Method Not Allowed');
    expect(clientErrorsMap[406], 'Not Acceptable');
    expect(clientErrorsMap[407], 'Proxy Authentication Required');
    expect(clientErrorsMap[408], 'Request Timeout');
    expect(clientErrorsMap[409], 'Conflict');
    expect(clientErrorsMap[410], 'Gone');
    expect(clientErrorsMap[411], 'Length Required');
    expect(clientErrorsMap[412], 'Precondition Failed');
    expect(clientErrorsMap[413], 'Payload Too Large');
    expect(clientErrorsMap[414], 'URI Too Long');
    expect(clientErrorsMap[415], 'Unsupported Media Type');
    expect(clientErrorsMap[416], 'Range Not Satisfiable');
    expect(clientErrorsMap[417], 'Expectation Failed');
    expect(clientErrorsMap[418], "I'm a teapot");
    expect(clientErrorsMap[421], 'Misdirected Request');
    expect(clientErrorsMap[422], 'Unprocessable Content');
    expect(clientErrorsMap[423], 'Locked');
    expect(clientErrorsMap[424], 'Failed Dependency');
    expect(clientErrorsMap[426], 'Upgrade Required');
    expect(clientErrorsMap[428], 'Precondition Required');
    expect(clientErrorsMap[429], 'Too Many Requests');
    expect(clientErrorsMap[431], 'Request Header Fields Too Large');
    expect(clientErrorsMap[451], 'Unavailable For Legal Reasons');
  });
}
