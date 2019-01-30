# flutter_device_information_example

## Introduce

Demonstrates how to use the flutter_device_information plugin.

## Getting Started

```
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_device_information/flutter_device_information.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  String _sdkInt = 'Unknown';
  String _board = 'Unknown';
  String _brand = 'Unknown';
  String _model = 'Unknown';
  String _CPUABI = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    String sdkInt;
    String board;
    String brand;
    String model;
    String CPUABI;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterDeviceInformation.platformVersion;
      sdkInt = await FlutterDeviceInformation.sdkInt;
      board = await FlutterDeviceInformation.board;
      brand = await FlutterDeviceInformation.brand;
      model = await FlutterDeviceInformation.model;
      CPUABI = await FlutterDeviceInformation.CPUABI;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
      sdkInt = 'Failed to get sdkInt version.';
      board = 'Failed to get preViewSdkInt version.';
      brand = 'Failed to get platform version.';
      model = 'Failed to get codeName.';
      CPUABI = 'Failed to get CPUABI.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _sdkInt = sdkInt;
      _board = board;
      _brand = brand;
      _model = model;
      _CPUABI = CPUABI;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          //          child: Text('Running on: $_platformVersion\n'),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('${_platformVersion}'),
              Text('${_sdkInt}'),
              Text('${_board}'),
              Text('${_brand}'),
              Text('${_model}'),
              Text('${_CPUABI}'),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Screenshot



