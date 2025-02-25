//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_AMapLocationQualityReport extends java_lang_Object  {
  // generate getters
  

  // generate setters
  

  // generate methods
  Future<void> setWifiAble(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setWifiAble([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setWifiAble', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setGpsStatus(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setGpsStatus([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setGpsStatus', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setGPSSatellites(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setGPSSatellites([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setGPSSatellites', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isWifiAble() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::isWifiAble([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::isWifiAble', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getGPSStatus() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getGPSStatus([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getGPSStatus', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getGPSSatellites() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getGPSSatellites([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getGPSSatellites', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getNetworkType() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getNetworkType([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getNetworkType', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setNetworkType(String var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setNetworkType([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setNetworkType', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getNetUseTime() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getNetUseTime([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getNetUseTime', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setNetUseTime(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setNetUseTime([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setNetUseTime', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setInstallHighDangerMockApp(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setInstallHighDangerMockApp([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setInstallHighDangerMockApp', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isInstalledHighDangerMockApp() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::isInstalledHighDangerMockApp([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::isInstalledHighDangerMockApp', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setLocationMode(com_amap_api_location_AMapLocationClientOption_AMapLocationMode var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::setLocationMode([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::setLocationMode', {"var1": var1.index, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> getAdviseMessage() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationQualityReport@$refId::getAdviseMessage([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationQualityReport::getAdviseMessage', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}