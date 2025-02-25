//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class AMapSearchAPI extends NSObject  {
  // generate getters
  Future<int> get_timeout() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSearchAPI::get_timeout", {'refId': refId});
  
    return result;
  }
  
  Future<AMapSearchLanguage> get_language() async {
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod("AMapSearchAPI::get_language", {'refId': refId});
  
    return AMapSearchLanguage.values[result];
  }
  

  // generate setters
  Future<void> set_delegate(AMapSearchDelegate delegate) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::set_delegate', {'refId': refId, "delegate": delegate.refId});
  
    MethodChannel('AMapSearchDelegate::Callback')
      .setMethodCallHandler((methodCall) async {
        final args = methodCall.arguments as Map;
        // final refId = args['callerRefId'] as int;
        // if (refId != this.refId) return;
  
        switch (methodCall.method) {
          case 'Callback::AMapSearchDelegate::onPOISearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onPOISearchDoneResponse([])');
        
            // handle the native call
            delegate?.onPOISearchDoneResponse(AMapPOISearchBaseRequest()..refId = (args['request']), AMapPOISearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onRoutePOISearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onRoutePOISearchDoneResponse([])');
        
            // handle the native call
            delegate?.onRoutePOISearchDoneResponse(AMapRoutePOISearchRequest()..refId = (args['request']), AMapRoutePOISearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onGeocodeSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onGeocodeSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onGeocodeSearchDoneResponse(AMapGeocodeSearchRequest()..refId = (args['request']), AMapGeocodeSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onReGeocodeSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onReGeocodeSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onReGeocodeSearchDoneResponse(AMapReGeocodeSearchRequest()..refId = (args['request']), AMapReGeocodeSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onInputTipsSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onInputTipsSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onInputTipsSearchDoneResponse(AMapInputTipsSearchRequest()..refId = (args['request']), AMapInputTipsSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onBusStopSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onBusStopSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onBusStopSearchDoneResponse(AMapBusStopSearchRequest()..refId = (args['request']), AMapBusStopSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onBusLineSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onBusLineSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onBusLineSearchDoneResponse(AMapBusLineBaseSearchRequest()..refId = (args['request']), AMapBusLineSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onDistrictSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onDistrictSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onDistrictSearchDoneResponse(AMapDistrictSearchRequest()..refId = (args['request']), AMapDistrictSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onRouteSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onRouteSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onRouteSearchDoneResponse(AMapRouteSearchBaseRequest()..refId = (args['request']), AMapRouteSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onFutureRouteSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onFutureRouteSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onFutureRouteSearchDoneResponse(AMapRouteSearchBaseRequest()..refId = (args['request']), AMapFutureRouteSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onDistanceSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onDistanceSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onDistanceSearchDoneResponse(AMapDistanceSearchRequest()..refId = (args['request']), AMapDistanceSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onWeatherSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onWeatherSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onWeatherSearchDoneResponse(AMapWeatherSearchRequest()..refId = (args['request']), AMapWeatherSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onRoadTrafficSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onRoadTrafficSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onRoadTrafficSearchDoneResponse(AMapRoadTrafficSearchBaseRequest()..refId = (args['request']), AMapRoadTrafficSearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onNearbySearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onNearbySearchDoneResponse([])');
        
            // handle the native call
            delegate?.onNearbySearchDoneResponse(AMapNearbySearchRequest()..refId = (args['request']), AMapNearbySearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onCloudSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onCloudSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onCloudSearchDoneResponse(AMapCloudSearchBaseRequest()..refId = (args['request']), AMapCloudPOISearchResponse()..refId = (args['response']));
            break;
          case 'Callback::AMapSearchDelegate::onShareSearchDoneResponse':
            // print log
            print('fluttify-dart-callback: onShareSearchDoneResponse([])');
        
            // handle the native call
            delegate?.onShareSearchDoneResponse(AMapShareSearchBaseRequest()..refId = (args['request']), AMapShareSearchResponse()..refId = (args['response']));
            break;
          default:
            break;
        }
      });
  }
  
  Future<void> set_timeout(int timeout) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::set_timeout', {'refId': refId, "timeout": timeout});
  
  
  }
  
  Future<void> set_language(AMapSearchLanguage language) async {
    await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::set_language', {'refId': refId, "language": language.index});
  
  
  }
  

  // generate methods
  Future<AMapSearchAPI> init() async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::init([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::init', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(AMapSearchAPI()..refId = result..tag = 'amap_search_fluttify');
      return AMapSearchAPI()..refId = result..tag = 'amap_search_fluttify';
    }
  }
  
  Future<void> cancelAllRequests() async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::cancelAllRequests([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::cancelAllRequests', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapPOIIDSearch(AMapPOIIDSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapPOIIDSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapPOIIDSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapPOIKeywordsSearch(AMapPOIKeywordsSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapPOIKeywordsSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapPOIKeywordsSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapPOIAroundSearch(AMapPOIAroundSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapPOIAroundSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapPOIAroundSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapPOIPolygonSearch(AMapPOIPolygonSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapPOIPolygonSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapPOIPolygonSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapRoutePOISearch(AMapRoutePOISearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapRoutePOISearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapRoutePOISearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapGeocodeSearch(AMapGeocodeSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapGeocodeSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapGeocodeSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapReGoecodeSearch(AMapReGeocodeSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapReGoecodeSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapReGoecodeSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapInputTipsSearch(AMapInputTipsSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapInputTipsSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapInputTipsSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapBusStopSearch(AMapBusStopSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapBusStopSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapBusStopSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapBusLineIDSearch(AMapBusLineIDSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapBusLineIDSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapBusLineIDSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapBusLineNameSearch(AMapBusLineNameSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapBusLineNameSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapBusLineNameSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapDistrictSearch(AMapDistrictSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapDistrictSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapDistrictSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapDrivingRouteSearch(AMapDrivingRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapDrivingRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapDrivingRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapWalkingRouteSearch(AMapWalkingRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapWalkingRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapWalkingRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapTransitRouteSearch(AMapTransitRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapTransitRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapTransitRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapRidingRouteSearch(AMapRidingRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapRidingRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapRidingRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapTruckRouteSearch(AMapTruckRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapTruckRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapTruckRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapFutureRouteSearch(AMapFutureRouteSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapFutureRouteSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapFutureRouteSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapWeatherSearch(AMapWeatherSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapWeatherSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapWeatherSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapRoadTrafficSearch(AMapRoadTrafficSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapRoadTrafficSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapRoadTrafficSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapRoadTrafficCircleSearch(AMapRoadTrafficCircleSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapRoadTrafficCircleSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapRoadTrafficCircleSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapDistanceSearch(AMapDistanceSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapDistanceSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapDistanceSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapNearbySearch(AMapNearbySearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapNearbySearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapNearbySearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapCloudPOIAroundSearch(AMapCloudPOIAroundSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapCloudPOIAroundSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapCloudPOIAroundSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapCloudPOIPolygonSearch(AMapCloudPOIPolygonSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapCloudPOIPolygonSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapCloudPOIPolygonSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapCloudPOIIDSearch(AMapCloudPOIIDSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapCloudPOIIDSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapCloudPOIIDSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapCloudPOILocalSearch(AMapCloudPOILocalSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapCloudPOILocalSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapCloudPOILocalSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapLocationShareSearch(AMapLocationShareSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapLocationShareSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapLocationShareSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapPOIShareSearch(AMapPOIShareSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapPOIShareSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapPOIShareSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapRouteShareSearch(AMapRouteShareSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapRouteShareSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapRouteShareSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<void> AMapNavigationShareSearch(AMapNavigationShareSearchRequest request) async {
    // print log
    print('fluttify-dart: AMapSearchAPI@$refId::AMapNavigationShareSearch([])');
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_search_fluttify').invokeMethod('AMapSearchAPI::AMapNavigationShareSearch', {"request": request.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}