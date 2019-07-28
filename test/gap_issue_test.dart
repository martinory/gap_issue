import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gap_issue/gap_issue.dart';

void main() {
  const MethodChannel channel = MethodChannel('gap_issue');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GapIssue.platformVersion, '42');
  });
}
