import 'dart:typed_data';

import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class AMapSuggestion extends AMapSearchObject  {
  static final _channel = MethodChannel('me.yohom/amap_search_fluttify');

  // 生成getters
  Future<List<String>> get_keywords() async {
    final result = await _channel.invokeMethod("AMapSuggestion::get_keywords", {'refId': refId});
    return result;
  }
  
  Future<List<AMapCity>> get_cities() async {
    final result = await _channel.invokeMethod("AMapSuggestion::get_cities", {'refId': refId});
    return (result as List).cast<int>().map((it) => AMapCity()..refId = it).toList();
  }
  

  // 生成setters
  

  // 生成方法们
  
}