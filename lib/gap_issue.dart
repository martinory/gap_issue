import 'dart:async';

import 'package:flutter/services.dart';

class GapIssue {
  static const MethodChannel _channel =
      const MethodChannel('gap_issue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
