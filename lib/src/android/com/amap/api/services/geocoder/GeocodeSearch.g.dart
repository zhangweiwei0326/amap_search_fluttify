//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_amap_api_services_geocoder_GeocodeSearch extends java_lang_Object  {
  // generate getters
  

  // generate setters
  

  // generate methods
  Future<com_amap_api_services_geocoder_RegeocodeAddress> getFromLocation(com_amap_api_services_geocoder_RegeocodeQuery var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.geocoder.GeocodeSearch@$refId::getFromLocation([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.geocoder.GeocodeSearch::getFromLocation', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_amap_api_services_geocoder_RegeocodeAddress()..refId = result..tag = 'amap_search_fluttify');
      return com_amap_api_services_geocoder_RegeocodeAddress()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<List<com_amap_api_services_geocoder_GeocodeAddress>> getFromLocationName(com_amap_api_services_geocoder_GeocodeQuery var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.geocoder.GeocodeSearch@$refId::getFromLocationName([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.geocoder.GeocodeSearch::getFromLocationName', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.addAll((result as List).cast<int>().map((it) => com_amap_api_services_geocoder_GeocodeAddress()..refId = it..tag = 'amap_search_fluttify').toList());
      return (result as List).cast<int>().map((it) => com_amap_api_services_geocoder_GeocodeAddress()..refId = it..tag = 'amap_search_fluttify').toList();
    }
  }
  
  Future<void> setOnGeocodeSearchListener(com_amap_api_services_geocoder_GeocodeSearch_OnGeocodeSearchListener var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.geocoder.GeocodeSearch@$refId::setOnGeocodeSearchListener([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.geocoder.GeocodeSearch::setOnGeocodeSearchListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.amap.api.services.geocoder.GeocodeSearch::setOnGeocodeSearchListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener::onRegeocodeSearched':
              // print log
              print('fluttify-dart-callback: onRegeocodeSearched([\'var2\':$args[var2]])');
        
              // handle the native call
              var1?.onRegeocodeSearched(com_amap_api_services_geocoder_RegeocodeResult()..refId = (args['var1']), args['var2']);
              break;
            case 'Callback::com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener::onGeocodeSearched':
              // print log
              print('fluttify-dart-callback: onGeocodeSearched([\'var2\':$args[var2]])');
        
              // handle the native call
              var1?.onGeocodeSearched(com_amap_api_services_geocoder_GeocodeResult()..refId = (args['var1']), args['var2']);
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
  
  Future<void> getFromLocationAsyn(com_amap_api_services_geocoder_RegeocodeQuery var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.geocoder.GeocodeSearch@$refId::getFromLocationAsyn([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.geocoder.GeocodeSearch::getFromLocationAsyn', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> getFromLocationNameAsyn(com_amap_api_services_geocoder_GeocodeQuery var1) async {
    // print log
    print('fluttify-dart: com.amap.api.services.geocoder.GeocodeSearch@$refId::getFromLocationNameAsyn([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('com.amap.api.services.geocoder.GeocodeSearch::getFromLocationNameAsyn', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}