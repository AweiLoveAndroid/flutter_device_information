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
  String _cpuAbi = 'Unknown';

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
    String cpuAbi;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await FlutterDeviceInformation.platformVersions;
      sdkInt = await FlutterDeviceInformation.sdkInts;
      board = await FlutterDeviceInformation.boards;
      brand = await FlutterDeviceInformation.brands;
      model = await FlutterDeviceInformation.model;
      cpuAbi = await FlutterDeviceInformation.cpuAbis;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
      sdkInt = 'Failed to get sdkInt version.';
      board = 'Failed to get preViewSdkInt version.';
      brand = 'Failed to get platform version.';
      model = 'Failed to get codeName.';
      cpuAbi = 'Failed to get CPUABI.';
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
      _cpuAbi = cpuAbi;
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
              Text('${_cpuAbi}'),
            ],
          ),
        ),
      ),
    );
  }
}
