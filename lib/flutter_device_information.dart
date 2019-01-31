import 'dart:async';

import 'package:flutter/services.dart';

/// 通过指定一个[MethodChannel]，然后调用Android平台的相关API，来获取平台设备相关信息的一个类
class FlutterDeviceInformation {
  /// [MethodChannel] 定义的MethodChannel名称为 "com.awei.devices/flutter_device_information"，
  /// 用于和原生平台通信
  static const MethodChannel _channel =
      const MethodChannel('com.awei.devices/flutter_device_information');

  /// 获取的是原生平台的系统版本号
  /// return [version] 原生平台的系统版本号
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 获取的是原生平台的API版本（SDKINT）
  /// return [version] 原生平台的API版本（SDKINT）
  static Future<String> get sdkInt async {
    final String version = await _channel.invokeMethod('getSDKINT');
    return version;
  }

  /// 获取的是原生平台的主板型号
  /// return [version] 原生平台的主板型号
  static Future<String> get board async {
    final String version = await _channel.invokeMethod('getBoard');
    return version;
  }

  /// 获取的是原生平台的产品品牌（or系统制造商）
  /// return [version] 原生平台的产品品牌（or系统制造商）
  static Future<String> get brand async {
    final String version = await _channel.invokeMethod('getBrand');
    return version;
  }

  /// 获取的是原生平台的手机的型号/设备名称
  /// return [version] 原生平台的手机的型号/设备名称
  static Future<String> get model async {
    final String version = await _channel.invokeMethod('getModel');
    return version;
  }

  /// 获取的是原生平台的设备指令集名称（CPU的类型）
  /// return [version] 原生平台的设备指令集名称（CPU的类型）
  static Future<String> get cpuAbi async {
    final String version = await _channel.invokeMethod('getCPUABI');
    return version;
  }
}
