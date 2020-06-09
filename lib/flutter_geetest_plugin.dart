import 'dart:async';

import 'package:flutter/services.dart';

class FlutterGeetestPlugin {
  static const MethodChannel _channel =
      const MethodChannel('flutter_geetest_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

 ///一键验证
 static Future<String> getGeetest(String challenge) async {
   final Map<String, dynamic> params = <String, dynamic>{
     'challenge': challenge,
   };
   final String result = await _channel.invokeMethod('getGeetest', params);
   return result;
 }
}
