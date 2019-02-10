# flutter_device_information

## Introduction

A plugin for using Android devices information in Flutter.
You can use it to get Android release version,Android API version,board name,brand name,model name, cpu ABI etc.

## Pub URL

[flutter_device_information](https://pub.dartlang.org/packages/flutter_device_information)


## Features

   Supports in Android now.

   * get release version.
   * get API version(SDKINT).
   * get board name.
   * get brand name.
   * get model name.
   * get CPUABI.

## Getting Started

For help getting started with Flutter, view the online [Flutter Documentation](https://flutter.io/).


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
  String cpuABI = await FlutterDeviceInformation.cpuAbi;
}
```

## Examples

Here is [Examples](https://github.com/AweiLoveAndroid/flutter_device_information/tree/master/example). You can find the sample codes and  the screenshot in it.

## More documentations

For help getting started with the library, view the online
[documentation](https://pub.dartlang.org/documentation/flutter_device_information/latest/).

## Request issues

Please request bugs at the [issue tracker](https://github.com/AweiLoveAndroid/flutter_device_information/issues).

## License

More infomation here: [License](https://github.com/AweiLoveAndroid/flutter_device_information/blob/master/LICENSE).
