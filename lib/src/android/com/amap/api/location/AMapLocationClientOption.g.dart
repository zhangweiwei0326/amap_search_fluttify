//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_location_AMapLocationClientOption extends java_lang_Object with android_os_Parcelable {
  // generate getters
  

  // generate setters
  

  // generate methods
  static Future<String> getAPIKEY() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::getAPIKEY([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getAPIKEY', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isMockEnable() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isMockEnable([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isMockEnable', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setMockEnable(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setMockEnable([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setMockEnable', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<int> getInterval() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getInterval([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getInterval', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setInterval(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setInterval([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setInterval', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isOnceLocation() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOnceLocation([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOnceLocation', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOnceLocation(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOnceLocation([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOnceLocation', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isNeedAddress() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isNeedAddress([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isNeedAddress', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setNeedAddress(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setNeedAddress([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setNeedAddress', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isWifiActiveScan() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isWifiActiveScan([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isWifiActiveScan', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setWifiActiveScan(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setWifiActiveScan([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setWifiActiveScan', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isWifiScan() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isWifiScan([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isWifiScan', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setWifiScan(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setWifiScan([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setWifiScan', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationMode> getLocationMode() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationMode([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationMode', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationMode.values[result];
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationMode(com_amap_api_location_AMapLocationClientOption_AMapLocationMode var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationMode([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationMode', {"var1": var1.index, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol> getLocationProtocol() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationProtocol([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationProtocol', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol.values[result];
    }
  }
  
  static Future<void> setLocationProtocol(com_amap_api_location_AMapLocationClientOption_AMapLocationProtocol var0) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setLocationProtocol([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationProtocol', {"var0": var0.index});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isKillProcess() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isKillProcess([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isKillProcess', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setKillProcess(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setKillProcess([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setKillProcess', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isGpsFirst() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isGpsFirst([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isGpsFirst', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGpsFirst(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGpsFirst([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGpsFirst', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGpsFirstTimeout(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGpsFirstTimeout([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGpsFirstTimeout', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<int> getGpsFirstTimeout() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getGpsFirstTimeout([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getGpsFirstTimeout', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> clone() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::clone([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::clone', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<int> getHttpTimeOut() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getHttpTimeOut([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getHttpTimeOut', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setHttpTimeOut(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setHttpTimeOut([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setHttpTimeOut', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isOffset() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOffset([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOffset', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOffset(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOffset([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOffset', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isLocationCacheEnable() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isLocationCacheEnable([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isLocationCacheEnable', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationCacheEnable(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationCacheEnable([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationCacheEnable', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isOnceLocationLatest() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isOnceLocationLatest([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOnceLocationLatest', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setOnceLocationLatest(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setOnceLocationLatest([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOnceLocationLatest', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<bool> isSensorEnable() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::isSensorEnable([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isSensorEnable', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setSensorEnable(bool var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setSensorEnable([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setSensorEnable', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLastLocationLifeCycle(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLastLocationLifeCycle([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLastLocationLifeCycle', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<int> getLastLocationLifeCycle() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLastLocationLifeCycle([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLastLocationLifeCycle', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_GeoLanguage> getGeoLanguage() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getGeoLanguage([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getGeoLanguage', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_GeoLanguage.values[result];
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setGeoLanguage(com_amap_api_location_AMapLocationClientOption_GeoLanguage var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setGeoLanguage([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setGeoLanguage', {"var1": var1.index, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  static Future<void> setDownloadCoordinateConvertLibrary(bool var0) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setDownloadCoordinateConvertLibrary([\'var0\':$var0])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setDownloadCoordinateConvertLibrary', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<bool> isDownloadCoordinateConvertLibrary() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::isDownloadCoordinateConvertLibrary([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isDownloadCoordinateConvertLibrary', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<double> getDeviceModeDistanceFilter() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getDeviceModeDistanceFilter([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getDeviceModeDistanceFilter', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setDeviceModeDistanceFilter(double var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setDeviceModeDistanceFilter([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setDeviceModeDistanceFilter', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption> setLocationPurpose(com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose var1) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::setLocationPurpose([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setLocationPurpose', {"var1": var1.index, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_location_AMapLocationClientOption()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose> getLocationPurpose() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getLocationPurpose([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getLocationPurpose', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return com_amap_api_location_AMapLocationClientOption_AMapLocationPurpose.values[result];
    }
  }
  
  static Future<bool> isOpenAlwaysScanWifi() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::isOpenAlwaysScanWifi([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::isOpenAlwaysScanWifi', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<void> setOpenAlwaysScanWifi(bool var0) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setOpenAlwaysScanWifi([\'var0\':$var0])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setOpenAlwaysScanWifi', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<void> setScanWifiInterval(int var0) async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption::setScanWifiInterval([\'var0\':$var0])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::setScanWifiInterval', {"var0": var0});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<int> getScanWifiInterval() async {
    // print log
    print('fluttify-dart: com.amap.api.location.AMapLocationClientOption@$refId::getScanWifiInterval([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.location.AMapLocationClientOption::getScanWifiInterval', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}