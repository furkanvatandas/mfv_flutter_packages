library log_manager;

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
export 'package:logging/logging.dart';

class LogManager {
  LogManager.init() {
    Logger.root.level = kDebugMode ? Level.ALL : Level.OFF;
    Logger.root.onRecord.listen(onListen);
  }

  void onListen(LogRecord record) {
    final ansiColor = logColor(record.level.name);
    String message = '$ansiColor${record.level.name}: ${record.message}';
    log(message, name: record.loggerName, level: record.level.value, time: record.time);
  }

  String logColor(String levelName) {
    switch (levelName) {
      case 'FINE':
        return '\x1b[32m';
      case 'INFO':
        return '\x1b[34m';
      case 'WARNING':
        return '\x1b[33m';
      case 'SEVERE':
        return '\x1b[103m\x1b[31m';
      case 'SHOUT':
        return '\x1b[31m';
      default:
        return '\x1b[90m';
    }
  }
}
