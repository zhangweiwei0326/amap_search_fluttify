//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_core_LatLonSharePoint extends java_lang_Object with android_os_Parcelable {
  // generate getters
  

  // generate setters
  

  // generate methods
  Future<String> getSharePointName() async {
    // print log
    print('fluttify-dart: com.amap.api.services.core.LatLonSharePoint@$refId::getSharePointName([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.core.LatLonSharePoint::getSharePointName', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> setSharePointName(String var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.core.LatLonSharePoint@$refId::setSharePointName([\'var1\':$var1])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.core.LatLonSharePoint::setSharePointName', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}