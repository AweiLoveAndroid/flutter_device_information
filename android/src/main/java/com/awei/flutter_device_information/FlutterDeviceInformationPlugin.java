package com.awei.flutter_device_information;

import android.os.Build;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;


/**
 * FlutterToastLzwPlugin
 */
public class FlutterDeviceInformationPlugin implements MethodCallHandler {
  /**
   * Plugin registration. 插件注册
   */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "com.awei.devices/flutter_device_information");
    /// 设置setMethodCallHandler回调 处理Flutter端的调用
    channel.setMethodCallHandler(new FlutterDeviceInformationPlugin());
  }

  /**
   * 在这个回调里处理从Flutter来的调用
   */
  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
//            result.success("Android " + android.os.Build.VERSION.RELEASE);
      result.success("Android release系统版本（字符串类型）：" + Build.VERSION.RELEASE);
    }
    else if(call.method.equals("getSDKINT")){
      result.success("Android API版本（int类型）：" + Build.VERSION.SDK_INT);
    }
    else if(call.method.equals("getBoard")){
      result.success("主板型号：" + Build.BOARD);
    }
    else if(call.method.equals("getBrand")){
      result.success("产品品牌（or系统制造商）：" + Build.BRAND);
    }
    else if(call.method.equals("getModel")){
      result.success("手机的型号/设备名称：" + Build.MODEL);
    }
    else if(call.method.equals("getCPUABI")){
      result.success("设备指令集名称（CPU的类型）：" + Build.CPU_ABI);
    }


    else {
      result.notImplemented();
    }
  }
}
