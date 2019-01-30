# flutter_device_information

## Introduction

A plugin for using Android devices information in Flutter.

## Features

   Supports in Android now.

   * get release version.
   * get API version(SDKINT).
   * get board name.
   * get brand name.
   * get model name.
   * get CPUABI.

## Get Started


#### 1.In your flutter project add the dependency:

```
dependencies:
  ...
  flutter_devices_information: any
```

#### 2.import `flutter_device_information.dart`

```
import 'package:flutter_device_information/flutter_device_information.dart';
///
Your code here.
///
```

#### 3.Use methods in library.

```
Future<void> getInfos() async {
  String platformVersion = await FlutterDeviceInformation.platformVersion;
  String sdkInt = await FlutterDeviceInformation.sdkInt;
  String board = await FlutterDeviceInformation.board;
  String brand = await FlutterDeviceInformation.brand;
  String model = await FlutterDeviceInformation.model;
  String CPUABI = await FlutterDeviceInformation.CPUABI;
}
```

## Examples

The examples here[]().

## More

For help getting started with the library, view the online
[documentation]().

## Request issues

Please request bugs at the [issue tracker]().

## License

More infomation about License here[]().