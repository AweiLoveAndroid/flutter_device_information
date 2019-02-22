import 'dart:async';

import 'package:flutter/services.dart';

/// [FlutterDeviceInformation] use [MethodChannel] and then call the APIs of the Android platform to obtain the platform device related information.
/// [FlutterDeviceInformation]：define a [MethodChannel] that named "com.awei.devices/flutter_device_information"，used for communication with platform.
class FlutterDeviceInformation {
  /// [MethodChannel] that named "com.awei.devices/flutter_device_information"，used for communication with platform.
  static const MethodChannel _channel =
      const MethodChannel('com.awei.devices/flutter_device_information');

  /// Get the platform version of the native platform
  ///
  /// return platformVersions
  static Future<String> get platformVersions async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// Get the API version(SDKINT) of the native platform
  ///
  /// return API version(SDKINT)
  static Future<String> get sdkInts async {
    final String version = await _channel.invokeMethod('getSDKINT');
    return version;
  }

  /// Get the board name of the native platform
  ///
  /// return board name
  static Future<String> get boards async {
    final String version = await _channel.invokeMethod('getBoard');
    return version;
  }

  /// Get the API version(SDKINT) of the native platform。
  ///
  /// return API version(SDKINT)
  static Future<String> get brands async {
    final String version = await _channel.invokeMethod('getBrand');
    return version;
  }

  /// Get the model(Phone model or device name) of the native platform
  ///
  /// return model(Phone model or device name)
  static Future<String> get model async {
    final String version = await _channel.invokeMethod('getModel');
    return version;
  }

  /// Get the CPU ABI(CPU Type) of the native platform
  ///
  /// return CPU ABI(CPU Type eg.arm64-v8a)
  static Future<String> get cpuAbis async {
    final String version = await _channel.invokeMethod('getCPUABI');
    return version;
  }
}
