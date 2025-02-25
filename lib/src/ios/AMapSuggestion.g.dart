//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapSuggestion extends AMapSearchObject  {
  // generate getters
  Future<List<String>> get_keywords() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSuggestion::get_keywords", {'refId': refId});
  
    return result;
  }
  
  Future<List<AMapCity>> get_cities() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSuggestion::get_cities", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapCity()..refId = it..tag = 'amap_search_fluttify').toList());
    return (result as List).cast<int>().map((it) => AMapCity()..refId = it..tag = 'amap_search_fluttify').toList();
  }
  

  // generate setters
  Future<void> set_keywords(List<String> keywords) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSuggestion::set_keywords', {'refId': refId, "keywords": keywords});
  
  
  }
  
  Future<void> set_cities(List<AMapCity> cities) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSuggestion::set_cities', {'refId': refId, "cities": cities.map((it) => it.refId).toList()});
  
  
  }
  

  // generate methods
  
}