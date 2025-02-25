//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapRoadTrafficSearchResponse extends AMapSearchObject  {
  // generate getters
  Future<AMapTrafficInfo> get_trafficInfo() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapRoadTrafficSearchResponse::get_trafficInfo", {'refId': refId});
    kNativeObjectPool.add(AMapTrafficInfo()..refId = result..tag = 'amap_search_fluttify');
    return AMapTrafficInfo()..refId = result..tag = 'amap_search_fluttify';
  }
  

  // generate setters
  Future<void> set_trafficInfo(AMapTrafficInfo trafficInfo) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapRoadTrafficSearchResponse::set_trafficInfo', {'refId': refId, "trafficInfo": trafficInfo.refId});
  
  
  }
  

  // generate methods
  
}