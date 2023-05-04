import 'core_localizations.dart';

/// The translations for Indonesian (`id`).
class CoreLocalizationsId extends CoreLocalizations {
  CoreLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String statusCodeSemantic(int code) {
    return 'Status Code $code';
  }

  @override
  String get badRequestMessage => 'Kesalahan karena permintaan yang tidak valid';

  @override
  String get unauthorizedMessage => 'Autentikasi dibutuhkan';

  @override
  String get forbiddenMessage => 'Tidak diizinkan untuk diakses';

  @override
  String get notFoundMessage => 'Sumber yang anda minta tidak ditemukan';

  @override
  String get methodNotAllowedMessage => 'Metode permintaan anda tidak didukung';

  @override
  String get notAcceptableMessage => 'Header content negotiation tidak valid';

  @override
  String get proxyAuthenticationRequiredMessage => 'Autentikasi dari proxy dibutuhkan';

  @override
  String get requestTimeoutMessage => 'Proses ini terlalu lama untuk ditangani';

  @override
  String get conflictMessage => 'Terjadi konflik di dalam server';

  @override
  String get goneMessage => 'Sumber yang anda minta telah dihapus';

  @override
  String get lengthRequiredMessage => 'Header `Content-Length` dibutuhkan';

  @override
  String get preconditionFailedMessage => 'Server tidak dapat menangani prasyaratan dari permintaan anda';

  @override
  String get payloadTooLargeMessage => 'Permintaan anda terlalu besar untuk ditangani';

  @override
  String get uriTooLongMessage => 'URI yang anda minta terlalu panjang dari apa yang server dapat tangani';

  @override
  String get unsupportedMediaTypeMessage => 'Format media yang anda berikan tidak didukung';

  @override
  String get rangeNotSatisfiableMessage => 'Server tidak dapat memenuhi spesifikasi dari header `Range`';

  @override
  String get expectationFailedMessage => 'Server tidak dapat memenuhi ekspetasi yang ditunjukkan oleh header `Expect`';

  @override
  String get imATeapotMessage => 'Server menolak permintaan anda untuk menyeduh kopi dengan teko';

  @override
  String get misdirectedRequestMessage => 'Permintaan anda diarahkan ke server yang salah';

  @override
  String get unprocessableContentMessage => 'Tidak dapat ditangani karena kesalahan semantik';

  @override
  String get lockedMessage => 'Sumber ini dilarang untuk diakses';

  @override
  String get failedDependencyMessage => 'Kesalahan karena kegagalan dari permintaan sebelumnya';

  @override
  String get upgradeRequiredMessage => 'Server tidak akan memproses permintaan anda dengan protokol saat ini';

  @override
  String get preconditionRequiredMessage => 'Permintaan anda membutuhkan header prasyarat';

  @override
  String get tooManyRequestsMessage => 'Terlalu banyak permintaan dalam waktu yang singkat';

  @override
  String get requestHeaderFieldsTooLargeMessage => 'Header permintaan anda terlalu besar untuk ditangani. Cek badan respon server untuk detail lebih lanjut';

  @override
  String get unavailableForLegalReasonsMessage => 'Permintaan anda tidak tersedia untuk alasan yang legal';

  @override
  String get internalServerErrorMessage => 'Mohon maaf atas ketidaknyamanannya';

  @override
  String get notImplementedMessage => 'Layanan ini tidak tersedia untuk saat ini';

  @override
  String get badGatewayMessage => 'Mohon maaf atas ketidaknyamanannya';

  @override
  String get serviceUnavailableMessage => 'Server tidak tersedia untuk saat ini';

  @override
  String get gatewayTimeoutMessage => 'Mohon maaf atas ketidaknyamanannya';

  @override
  String get httpVersionNotSupportedMessage => 'Server tidak mendukung versi HTTP anda';

  @override
  String get variantAlsoNegotiatesMessage => 'Mohon maaf atas ketidaknyamanannya';

  @override
  String get insufficientStorageMessage => 'Kapasitas server terlalu penuh untuk saat ini';

  @override
  String get loopDetectedMessage => 'Perulangan tak terbatas terdeteksi saat memproses permintaan Anda';

  @override
  String get notExtendedMessage => 'Mohon maaf atas ketidaknyamanannya';

  @override
  String get networkAuthenticationRequiredMessage => 'Autentikasi layanan jaringan anda dibutuhkan';
}
