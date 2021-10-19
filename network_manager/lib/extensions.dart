import 'dart:async';
import 'dart:io';

import 'network_request.dart';

extension HttpMethodsExtension on HttpMethods {
  String get methodName {
    switch (this) {
      case HttpMethods.get:
        return 'GET';
      case HttpMethods.post:
        return 'POST';
      case HttpMethods.put:
        return 'PUT';
      case HttpMethods.delete:
        return 'DELETE';
    }
  }
}

extension ExceptionExtension on Exception {
  String clientMessage() {
    const String _timeExceptionMessage = 'İşleminizi gerçekleştirirken bir hata oluştu.';
    const String _socketExceptionMessage = 'İnternet bağlantınızı kontrol edebilir misiniz?';
    const String _defaultExceptionMessage = 'İşleminizi gerçekleştirirken bir hata oluştu.';
    const String _handshakeExceptionMessage = 'Cihazınızın saat ve tarih ayarlarını kontrol ediniz.';

    if (this is SocketException) {
      return _socketExceptionMessage;
    } else if (this is TimeoutException) {
      return _timeExceptionMessage;
    } else if (this is FormatException) {
      return _defaultExceptionMessage;
    } else if (this is HttpException) {
      return _defaultExceptionMessage;
    } else if (this is HandshakeException) {
      return _handshakeExceptionMessage;
    } else {
      return _defaultExceptionMessage;
    }
  }
}
