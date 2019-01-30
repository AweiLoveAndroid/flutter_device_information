import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDeviceInformation {
  static const MethodChannel _channel =
      const MethodChannel('com.awei.devices/flutter_device_information');

  // 默认的方法  获取的是原生平台的系统版本号
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> get sdkInt async {
    final String version = await _channel.invokeMethod('getSDKINT');
    return version;
  }

  static Future<String> get board async {
    final String version = await _channel.invokeMethod('getBoard');
    return version;
  }

  static Future<String> get brand async {
    final String version = await _channel.invokeMethod('getBrand');
    return version;
  }

  static Future<String> get model async {
    final String version = await _channel.invokeMethod('getModel');
    return version;
  }

  static Future<String> get CPUABI async {
    final String version = await _channel.invokeMethod('getCPUABI');
    return version;
  }
}
