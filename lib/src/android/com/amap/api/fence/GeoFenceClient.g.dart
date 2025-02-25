//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_fence_GeoFenceClient extends java_lang_Object  {
  // generate getters
  

  // generate setters
  

  // generate methods
  Future<void> setActivateAction(int var1) async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::setActivateAction([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::setActivateAction', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setGeoFenceListener(com_amap_api_fence_GeoFenceListener var1) async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::setGeoFenceListener([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::setGeoFenceListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.amap.api.fence.GeoFenceClient::setGeoFenceListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.fence.GeoFenceListener::onGeoFenceCreateFinished':
              // print log
              print('fluttify-dart-callback: onGeoFenceCreateFinished([\'var2\':$args[var2], \'var3\':$args[var3]])');
        
              // handle the native call
              var1?.onGeoFenceCreateFinished((args['var1'] as List).cast<int>().map((it) => com_amap_api_fence_GeoFence()..refId = it).toList(), args['var2'], args['var3']);
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> addGeoFence(com_amap_api_location_DPoint var1, double var2, String var3) async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::addGeoFence([\'var2\':$var2, \'var3\':$var3])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::addGeoFence', {"var1": var1.refId, "var2": var2, "var3": var3, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> removeGeoFence() async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::removeGeoFence([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::removeGeoFence', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<List<com_amap_api_fence_GeoFence>> getAllGeoFence() async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::getAllGeoFence([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::getAllGeoFence', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_fence_GeoFence()..refId = it..tag = 'amap_search_fluttify').toList());
      return (result as List).cast<int>().map((it) => com_amap_api_fence_GeoFence()..refId = it..tag = 'amap_search_fluttify').toList();
    }
  }
  
  Future<void> setGeoFenceAble(String var1, bool var2) async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::setGeoFenceAble([\'var1\':$var1, \'var2\':$var2])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::setGeoFenceAble', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> pauseGeoFence() async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::pauseGeoFence([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::pauseGeoFence', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> resumeGeoFence() async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::resumeGeoFence([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::resumeGeoFence', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<bool> isPause() async {
    // print log
    print('fluttify-dart: com.amap.api.fence.GeoFenceClient@$refId::isPause([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.fence.GeoFenceClient::isPause', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}