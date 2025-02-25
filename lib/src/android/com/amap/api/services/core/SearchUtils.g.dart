//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_core_SearchUtils extends java_lang_Object  {
  // generate getters
  

  // generate setters
  

  // generate methods
  static Future<String> getSHA1(android_content_Context var0) async {
    // print log
    print('fluttify-dart: com.amap.api.services.core.SearchUtils::getSHA1([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.core.SearchUtils::getSHA1', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<String> getPkgName(android_content_Context var0) async {
    // print log
    print('fluttify-dart: com.amap.api.services.core.SearchUtils::getPkgName([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.core.SearchUtils::getPkgName', {"var0": var0.refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<String> getVersion() async {
    // print log
    print('fluttify-dart: com.amap.api.services.core.SearchUtils::getVersion([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.core.SearchUtils::getVersion', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}