import 'package:example/app.dart';
import 'package:flutter/material.dart';
import 'package:log_manager/log_manager.dart';

void main() {
  LogManager.init();
  runApp(const MyApp());
}
