//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapBusStop extends AMapSearchObject  {
  // generate getters
  Future<String> get_uid() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_uid", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_adcode() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_adcode", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_name() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_name", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_citycode() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_citycode", {'refId': refId});
  
    return result;
  }
  
  Future<AMapGeoPoint> get_location() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_location", {'refId': refId});
    kNativeObjectPool.add(AMapGeoPoint()..refId = result..tag = 'amap_search_fluttify');
    return AMapGeoPoint()..refId = result..tag = 'amap_search_fluttify';
  }
  
  Future<List<AMapBusLine>> get_buslines() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_buslines", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapBusLine()..refId = it..tag = 'amap_search_fluttify').toList());
    return (result as List).cast<int>().map((it) => AMapBusLine()..refId = it..tag = 'amap_search_fluttify').toList();
  }
  
  Future<String> get_sequence() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapBusStop::get_sequence", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_uid(String uid) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_uid', {'refId': refId, "uid": uid});
  
  
  }
  
  Future<void> set_adcode(String adcode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_adcode', {'refId': refId, "adcode": adcode});
  
  
  }
  
  Future<void> set_name(String name) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_name', {'refId': refId, "name": name});
  
  
  }
  
  Future<void> set_citycode(String citycode) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_citycode', {'refId': refId, "citycode": citycode});
  
  
  }
  
  Future<void> set_location(AMapGeoPoint location) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_location', {'refId': refId, "location": location.refId});
  
  
  }
  
  Future<void> set_buslines(List<AMapBusLine> buslines) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_buslines', {'refId': refId, "buslines": buslines.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_sequence(String sequence) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapBusStop::set_sequence', {'refId': refId, "sequence": sequence});
  
  
  }
  

  // generate methods
  
}