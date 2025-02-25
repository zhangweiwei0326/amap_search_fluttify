//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapTransit extends AMapSearchObject  {
  // generate getters
  Future<double> get_cost() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_cost", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_duration() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_duration", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_nightflag() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_nightflag", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_walkingDistance() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_walkingDistance", {'refId': refId});
  
    return result;
  }
  
  Future<List<AMapSegment>> get_segments() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_segments", {'refId': refId});
    kNativeObjectPool.addAll((result as List).cast<int>().map((it) => AMapSegment()..refId = it..tag = 'amap_search_fluttify').toList());
    return (result as List).cast<int>().map((it) => AMapSegment()..refId = it..tag = 'amap_search_fluttify').toList();
  }
  
  Future<int> get_distance() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapTransit::get_distance", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_cost(double cost) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_cost', {'refId': refId, "cost": cost});
  
  
  }
  
  Future<void> set_duration(int duration) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_duration', {'refId': refId, "duration": duration});
  
  
  }
  
  Future<void> set_nightflag(bool nightflag) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_nightflag', {'refId': refId, "nightflag": nightflag});
  
  
  }
  
  Future<void> set_walkingDistance(int walkingDistance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_walkingDistance', {'refId': refId, "walkingDistance": walkingDistance});
  
  
  }
  
  Future<void> set_segments(List<AMapSegment> segments) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_segments', {'refId': refId, "segments": segments.map((it) => it.refId).toList()});
  
  
  }
  
  Future<void> set_distance(int distance) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapTransit::set_distance', {'refId': refId, "distance": distance});
  
  
  }
  

  // generate methods
  
}