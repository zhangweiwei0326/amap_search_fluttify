//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapCloudImage extends AMapSearchObject  {
  // generate getters
  Future<String> get_uid() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_uid", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_preurl() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_preurl", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_url() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapCloudImage::get_url", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_uid(String uid) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_uid', {'refId': refId, "uid": uid});
  
  
  }
  
  Future<void> set_preurl(String preurl) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_preurl', {'refId': refId, "preurl": preurl});
  
  
  }
  
  Future<void> set_url(String url) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapCloudImage::set_url', {'refId': refId, "url": url});
  
  
  }
  

  // generate methods
  
}