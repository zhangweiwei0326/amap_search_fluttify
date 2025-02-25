import 'dart:async';

import 'package:amap_search_fluttify/src/android/android.export.g.dart';
import 'package:amap_search_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/cupertino.dart';

import '../utils.g.dart';
import 'models.dart';

/// 释放资源mixin
mixin AmapSearchDisposeMixin<T extends StatefulWidget> on State<T> {
  @override
  void dispose() {
    AmapSearch.dispose();
    super.dispose();
  }
}

/// 高德地图 搜索组件主类
class AmapSearch {
  AmapSearch._();

  static AMapSearchAPI _iosSearch;
  static com_amap_api_services_poisearch_PoiSearch _androidPoiSearch;
  static com_amap_api_services_help_Inputtips _androidInputTip;
  static com_amap_api_services_geocoder_GeocodeSearch _androidGeocodeSearch;
  static com_amap_api_services_route_RouteSearch _androidRouteSearch;
  static com_amap_api_services_busline_BusStationSearch
      _androidBusStationSearch;
  static com_amap_api_services_district_DistrictSearch _androidDistrictSearch;
  static com_amap_api_services_weather_WeatherSearch _androidWeatherSearch;

  /// 关键字搜索poi
  ///
  /// 在城市[city]搜索关键字[keyword]的poi
  static Future<List<Poi>> searchKeyword(String keyword, {String city = ''}) {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<List<Poi>>(sync: true);

    platform(
      android: (pool) async {
        // 创建查询对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_poisearch_PoiSearch_Query__String__String__String(
                keyword, '', city);

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidPoiSearch = await ObjectFactory_Android
            .createcom_amap_api_services_poisearch_PoiSearch__android_content_Context__com_amap_api_services_poisearch_PoiSearch_Query(
                context, query);

        // 设置回调
        await _androidPoiSearch
            .setOnPoiSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidPoiSearch.searchPOIAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query)..add(context);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建请求对象
        final request =
            await ObjectFactory_iOS.createAMapPOIKeywordsSearchRequest();
        // 设置关键字
        await request.set_keywords(keyword);
        // 设置城市
        await request.set_city(city);

        // 开始搜索
        await _iosSearch.AMapPOIKeywordsSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 周边搜索poi
  ///
  /// 在中心点[center]周边搜索关键字[keyword]和城市[city]的poi
  static Future<List<Poi>> searchAround(
    LatLng center, {
    String keyword = '',
    String city = '',
    String type = '',
    int radius = 1000,
  }) {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<List<Poi>>(sync: true);

    platform(
      android: (pool) async {
        // 创建查询对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_poisearch_PoiSearch_Query__String__String__String(
                keyword, type, city);

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidPoiSearch = await ObjectFactory_Android
            .createcom_amap_api_services_poisearch_PoiSearch__android_content_Context__com_amap_api_services_poisearch_PoiSearch_Query(
                context, query);

        // 创建中心点
        final centerLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
                center.latitude, center.longitude);
        // 创建边界
        final bound = await ObjectFactory_Android
            .createcom_amap_api_services_poisearch_PoiSearch_SearchBound__com_amap_api_services_core_LatLonPoint__int(
                centerLatLng, radius);
        await _androidPoiSearch.setBound(bound);
        // 设置搜索类型

        // 设置回调
        await _androidPoiSearch
            .setOnPoiSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidPoiSearch.searchPOIAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query)..add(centerLatLng)..add(bound);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建周边搜索请求
        final request =
            await ObjectFactory_iOS.createAMapPOIAroundSearchRequest();
        // 设置关键字
        await request.set_keywords(keyword);
        // 设置城市
        await request.set_city(city);
        // 设置搜索类别
        await request.set_types(type);
        // 创建中心点
        final location = await ObjectFactory_iOS.createAMapGeoPoint();
        await location.set_latitude(center.latitude);
        await location.set_longitude(center.longitude);
        await request.set_location(location);
        // 设置半径
        await request.set_radius(radius);

        // 开始搜索
        await _iosSearch.AMapPOIAroundSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request)..add(location);
      },
    );
    return _controller.stream.first;
  }

  /// 输入内容自动提示
  ///
  /// 输入关键字[keyword], 并且限制所在城市[city]
  static Future<List<InputTip>> fetchInputTips(
    String keyword, {
    String city = '',
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<List<InputTip>>(sync: true);

    platform(
      android: (pool) async {
        // 创建查询对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_help_InputtipsQuery__String__String(
                keyword, city);
        // 限制在当前城市
        await query.setCityLimit(true);

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidInputTip = await ObjectFactory_Android
            .createcom_amap_api_services_help_Inputtips__android_content_Context__com_amap_api_services_help_InputtipsQuery(
                context, query);

        // 设置回调
        await _androidInputTip
            .setInputtipsListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidInputTip.requestInputtipsAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapInputTipsSearchRequest();
        // 设置关键字
        await request.set_keywords(keyword);
        // 设置城市
        await request.set_city(city);

        // 开始搜索
        await _iosSearch.AMapInputTipsSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 地理编码（地址转坐标）
  ///
  /// 输入关键字[keyword], 并且限制所在城市[city]
  static Future<List<Geocode>> searchGeocode(
    String keyword, {
    String city = '',
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<List<Geocode>>();

    platform(
      android: (pool) async {
        // 创建查询对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_geocoder_GeocodeQuery__String__String(
                keyword, city);

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidGeocodeSearch = await ObjectFactory_Android
            .createcom_amap_api_services_geocoder_GeocodeSearch__android_content_Context(
                context);

        // 设置回调
        await _androidGeocodeSearch
            .setOnGeocodeSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidGeocodeSearch.getFromLocationNameAsyn(query);

        // 局部变量从HEAP中解除引用
        pool..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapGeocodeSearchRequest();
        // 设置关键字
        await request.set_address(keyword);
        // 设置城市
        await request.set_city(city);

        // 开始搜索
        await _iosSearch.AMapGeocodeSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 逆地理编码（坐标转地址）
  ///
  /// 输入关键字[keyword], 并且限制所在城市[city]
  static Future<ReGeocode> searchReGeocode(
    LatLng latLng, {
    double radius = 200.0,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<ReGeocode>(sync: true);

    platform(
      android: (pool) async {
        // 创建中心点
        final latLngPoint = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
                latLng.latitude, latLng.longitude);

        // 创建查询对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_geocoder_RegeocodeQuery__com_amap_api_services_core_LatLonPoint__float__String(
                latLngPoint, radius, 'AMAP');

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidGeocodeSearch = await ObjectFactory_Android
            .createcom_amap_api_services_geocoder_GeocodeSearch__android_content_Context(
                context);

        // 设置回调
        await _androidGeocodeSearch
            .setOnGeocodeSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidGeocodeSearch.getFromLocationAsyn(query);

        // 局部变量从HEAP中解除引用
        pool..add(latLngPoint)..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 创建中心点
        final amapLocation = await ObjectFactory_iOS.createAMapGeoPoint();
        await amapLocation.set_latitude(latLng.latitude);
        await amapLocation.set_longitude(latLng.longitude);

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapReGeocodeSearchRequest();
        // 设置中心点
        await request.set_location(amapLocation);
        // 设置半径
        await request.set_radius(radius.toInt());

        // 开始搜索
        await _iosSearch.AMapReGoecodeSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(amapLocation)..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 驾车出行路线规划
  ///
  /// 指定起点[from]和终点[to], 并指定途经点[passedByPoints]和避开道路名称[avoidRoad]进行搜索
  static Future<DriveRouteResult> searchDriveRoute({
    @required LatLng from,
    @required LatLng to,
    List<LatLng> passedByPoints = const [],
    String avoidRoad = '',
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<DriveRouteResult>(sync: true);

    platform(
      android: (pool) async {
        // 起点
        final fromLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          from.latitude,
          from.longitude,
        );
        // 终点
        final toLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          to.latitude,
          to.longitude,
        );

        // 起终点
        final fromAndTo = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_FromAndTo__com_amap_api_services_core_LatLonPoint__com_amap_api_services_core_LatLonPoint(
                fromLatLng, toLatLng);

        // 途经点
        final List<com_amap_api_services_core_LatLonPoint> passby = [];
        for (var item in passedByPoints) {
          passby.add(await ObjectFactory_Android
              .createcom_amap_api_services_core_LatLonPoint__double__double(
            item.latitude,
            item.longitude,
          ));
        }

        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_DriveRouteQuery__com_amap_api_services_route_RouteSearch_FromAndTo__int__com_amap_api_services_core_LatLonPoint__com_amap_api_services_core_LatLonPoint__String(
          fromAndTo,
          0,
          passby,
          [], // 暂不支持多维数组
          avoidRoad,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidRouteSearch = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch__android_content_Context(
                context);

        // 设置回调
        await _androidRouteSearch
            .setRouteSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidRouteSearch.calculateDriveRouteAsyn(query);

        // 局部变量从HEAP中解除引用
        pool
          ..add(fromLatLng)
          ..add(toLatLng)
          ..add(fromAndTo)
          ..addAll(passby)
          ..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 创建起点
        final fromLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await fromLatLng.set_latitude(from.latitude);
        await fromLatLng.set_longitude(from.longitude);
        // 创建终点
        final toLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await toLatLng.set_latitude(to.latitude);
        await toLatLng.set_longitude(to.longitude);

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapDrivingRouteSearchRequest();
        // 设置起点
        await request.set_origin(fromLatLng);
        // 设置终点
        await request.set_destination(toLatLng);
        // 设置避开道路
        await request.set_avoidroad(avoidRoad);
        // 策略 默认0 速度优先
        await request.set_strategy(0);
        // 设置途经点
        final List<AMapGeoPoint> passby = [];
        for (var item in passedByPoints) {
          final geoPoint = await ObjectFactory_iOS.createAMapGeoPoint();
          await geoPoint.set_latitude(item.latitude);
          await geoPoint.set_longitude(item.longitude);
          passby.add(geoPoint);
        }
        await request.set_waypoints(passby);
        // 暂不支持避开区域
//        await request.set_avoidpolygons([]);

        // 开始搜索
        await _iosSearch.AMapDrivingRouteSearch(request);

        // 局部变量从HEAP中解除引用
        pool
          ..add(fromLatLng)
          ..add(toLatLng)
          ..addAll(passby)
          ..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 公交出行路线规划
  ///
  /// 指定起点[from]和终点[to]进行计算, 还可以指定计算路径的模式[mode], 默认为最快捷. [city]指定所在城市
  /// [nightflag]是否计算夜班车，默认为不计算，0：不计算，1：计算
  static Future<BusRouteResult> searchBusRoute({
    @required LatLng from,
    @required LatLng to,
    @required String city,
    int mode = 0,
    int nightflag = 0,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<BusRouteResult>(sync: true);

    platform(
      android: (pool) async {
        // 起点
        final fromLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          from.latitude,
          from.longitude,
        );
        // 终点
        final toLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          to.latitude,
          to.longitude,
        );

        // 起终点
        final fromAndTo = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_FromAndTo__com_amap_api_services_core_LatLonPoint__com_amap_api_services_core_LatLonPoint(
                fromLatLng, toLatLng);

        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_BusRouteQuery__com_amap_api_services_route_RouteSearch_FromAndTo__int__String__int(
          fromAndTo,
          mode,
          city,
          nightflag,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidRouteSearch = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch__android_content_Context(
                context);

        // 设置回调
        await _androidRouteSearch
            .setRouteSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidRouteSearch.calculateBusRouteAsyn(query);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(fromAndTo)..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 创建起点
        final fromLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await fromLatLng.set_latitude(from.latitude);
        await fromLatLng.set_longitude(from.longitude);
        // 创建终点
        final toLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await toLatLng.set_latitude(to.latitude);
        await toLatLng.set_longitude(to.longitude);

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapWalkingRouteSearchRequest();
        // 设置起点
        await request.set_origin(fromLatLng);
        // 设置终点
        await request.set_destination(toLatLng);

        // 开始搜索
        await _iosSearch.AMapWalkingRouteSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 步行路线规划
  ///
  /// 指定起点[from]和终点[to]进行计算, 还可以指定计算路径的模式[mode]. SDK提供两种模式：RouteSearch.WALK_DEFAULT 和 RouteSearch.WALK_MULTI_PATH
  static Future<WalkRouteResult> searchWalkRoute({
    @required LatLng from,
    @required LatLng to,
    int mode = 0,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<WalkRouteResult>(sync: true);

    platform(
      android: (pool) async {
        // 起点
        final fromLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          from.latitude,
          from.longitude,
        );
        // 终点
        final toLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          to.latitude,
          to.longitude,
        );

        // 起终点
        final fromAndTo = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_FromAndTo__com_amap_api_services_core_LatLonPoint__com_amap_api_services_core_LatLonPoint(
                fromLatLng, toLatLng);

        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_WalkRouteQuery__com_amap_api_services_route_RouteSearch_FromAndTo__int(
          fromAndTo,
          mode,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidRouteSearch = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch__android_content_Context(
                context);

        // 设置回调
        await _androidRouteSearch
            .setRouteSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidRouteSearch.calculateWalkRouteAsyn(query);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(fromAndTo)..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 创建起点
        final fromLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await fromLatLng.set_latitude(from.latitude);
        await fromLatLng.set_longitude(from.longitude);
        // 创建终点
        final toLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await toLatLng.set_latitude(to.latitude);
        await toLatLng.set_longitude(to.longitude);

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapWalkingRouteSearchRequest();
        // 设置起点
        await request.set_origin(fromLatLng);
        // 设置终点
        await request.set_destination(toLatLng);

        // 开始搜索
        await _iosSearch.AMapWalkingRouteSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 骑行路径规划
  static Future<RideRouteResult> searchRideRoute({
    @required LatLng from,
    @required LatLng to,
    int mode = 0,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<RideRouteResult>(sync: true);

    platform(
      android: (pool) async {
        // 起点
        final fromLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          from.latitude,
          from.longitude,
        );
        // 终点
        final toLatLng = await ObjectFactory_Android
            .createcom_amap_api_services_core_LatLonPoint__double__double(
          to.latitude,
          to.longitude,
        );

        // 起终点
        final fromAndTo = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_FromAndTo__com_amap_api_services_core_LatLonPoint__com_amap_api_services_core_LatLonPoint(
                fromLatLng, toLatLng);

        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch_RideRouteQuery__com_amap_api_services_route_RouteSearch_FromAndTo__int(
          fromAndTo,
          mode,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidRouteSearch = await ObjectFactory_Android
            .createcom_amap_api_services_route_RouteSearch__android_content_Context(
                context);

        // 设置回调
        await _androidRouteSearch
            .setRouteSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidRouteSearch.calculateRideRouteAsyn(query);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(fromAndTo)..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 创建起点
        final fromLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await fromLatLng.set_latitude(from.latitude);
        await fromLatLng.set_longitude(from.longitude);
        // 创建终点
        final toLatLng = await ObjectFactory_iOS.createAMapGeoPoint();
        await toLatLng.set_latitude(to.latitude);
        await toLatLng.set_longitude(to.longitude);

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapRidingRouteSearchRequest();
        // 设置起点
        await request.set_origin(fromLatLng);
        // 设置终点
        await request.set_destination(toLatLng);
        // 设置模式
        await request.set_type(mode);

        // 开始搜索
        await _iosSearch.AMapRidingRouteSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(fromLatLng)..add(toLatLng)..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 获取公交信息
  static Future<BusStation> searchBusStation({
    @required String stationName,
    @required String city,
  }) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<BusStation>(sync: true);

    platform(
      android: (pool) async {
        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_busline_BusStationQuery__String__String(
          stationName,
          city,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidBusStationSearch = await ObjectFactory_Android
            .createcom_amap_api_services_busline_BusStationSearch__android_content_Context__com_amap_api_services_busline_BusStationQuery(
          context,
          query,
        );

        // 设置回调
        await _androidBusStationSearch
            .setOnBusStationSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidBusStationSearch.searchBusStationAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapBusStopSearchRequest();
        // 设置站点名称
        await request.set_keywords(stationName);
        // 设置所在城市
        await request.set_city(city);

        // 开始搜索
        await _iosSearch.AMapBusStopSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 获取行政区划数据
  static Future<District> searchDistrict(String district) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<District>(sync: true);

    platform(
      android: (pool) async {
        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_district_DistrictSearchQuery__();
        await query.setKeywords(district);

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidDistrictSearch = await ObjectFactory_Android
            .createcom_amap_api_services_district_DistrictSearch__android_content_Context(
                context);

        // 设置请求
        await _androidDistrictSearch.setQuery(query);

        // 设置回调
        await _androidDistrictSearch
            .setOnDistrictSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidDistrictSearch.searchDistrictAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapDistrictSearchRequest();
        // 设置站点名称
        await request.set_keywords(district);

        // 开始搜索
        await _iosSearch.AMapDistrictSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// todo 获取天气数据
  static Future<Weather> searchWeather(String city, {int mode = 0}) async {
    // 会在listener中关闭
    // ignore: close_sinks
    final _controller = StreamController<Weather>(sync: true);

    platform(
      android: (pool) async {
        // 创建请求对象
        final query = await ObjectFactory_Android
            .createcom_amap_api_services_weather_WeatherSearchQuery__String__int(
          city,
          mode,
        );

        // 获取android上下文
        final context = await PlatformFactory_Android.getandroid_app_Activity();

        // 创建搜索对象
        _androidWeatherSearch = await ObjectFactory_Android
            .createcom_amap_api_services_weather_WeatherSearch__android_content_Context(
                context);

        // 设置请求
        await _androidWeatherSearch.setQuery(query);

        // 设置回调
        await _androidWeatherSearch
            .setOnWeatherSearchListener(_AndroidSearchListener(_controller));

        // 开始搜索
        await _androidDistrictSearch.searchDistrictAsyn();

        // 局部变量从HEAP中解除引用
        pool..add(query);
        release(query);
      },
      ios: (pool) async {
        _iosSearch = await ObjectFactory_iOS.createAMapSearchAPI();

        // 设置回调
        await _iosSearch.set_delegate(_IOSSearchListener(_controller));

        // 创建搜索请求
        final request =
            await ObjectFactory_iOS.createAMapWeatherSearchRequest();
        // 设置站点名称
        await request.set_city(city);
        await request.set_type(AMapWeatherType.values[mode]);

        // 开始搜索
        await _iosSearch.AMapWeatherSearch(request);

        // 局部变量从HEAP中解除引用
        pool..add(request);
      },
    );
    return _controller.stream.first;
  }

  /// 释放原生端对应的资源, 除了[AMapServices]
  static void dispose() {
    final isCurrentPlugin = (it) => it.tag == 'amap_search_fluttify';
    kNativeObjectPool
      ..where(isCurrentPlugin).forEach(release)
      ..removeWhere(isCurrentPlugin);
    if (_iosSearch != null) release(_iosSearch);
    if (_androidPoiSearch != null) release(_androidPoiSearch);
    if (_androidInputTip != null) release(_androidInputTip);
    if (_androidGeocodeSearch != null) release(_androidGeocodeSearch);
    if (_androidRouteSearch != null) release(_androidRouteSearch);
    if (_androidBusStationSearch != null) release(_androidBusStationSearch);
    if (_androidDistrictSearch != null) release(_androidDistrictSearch);
    if (_androidWeatherSearch != null) release(_androidWeatherSearch);
  }
}

/// android: 搜索监听
class _AndroidSearchListener extends java_lang_Object
    with
        com_amap_api_services_poisearch_PoiSearch_OnPoiSearchListener,
        com_amap_api_services_help_Inputtips_InputtipsListener,
        com_amap_api_services_geocoder_GeocodeSearch_OnGeocodeSearchListener,
        com_amap_api_services_route_RouteSearch_OnRouteSearchListener,
        com_amap_api_services_busline_BusStationSearch_OnBusStationSearchListener,
        com_amap_api_services_district_DistrictSearch_OnDistrictSearchListener,
        com_amap_api_services_weather_WeatherSearch_OnWeatherSearchListener {
  _AndroidSearchListener(this._streamController);

  final StreamController _streamController;

  @override
  Future<void> onPoiSearched(
    com_amap_api_services_poisearch_PoiResult var1,
    int var2,
  ) async {
    super.onPoiSearched(var1, var2);
    final poiList = [
      for (final item in (await var1.getPois())) Poi.android(item)
    ];
    _streamController?.add(poiList);
    _streamController?.close();
  }

  @override
  Future<void> onGetInputtips(
      List<com_amap_api_services_help_Tip> var1, int var2) async {
    super.onGetInputtips(var1, var2);
    final inputTipList = [for (final item in var1) InputTip.android(item)];
    _streamController?.add(inputTipList);
    _streamController?.close();
  }

  @override
  Future<void> onGeocodeSearched(
      com_amap_api_services_geocoder_GeocodeResult var1, int var2) async {
    super.onGeocodeSearched(var1, var2);
    final geocode = [
      for (final item in (await var1.getGeocodeAddressList()))
        Geocode.android(item)
    ];
    _streamController?.add(geocode);
    _streamController?.close();
  }

  @override
  Future<void> onRegeocodeSearched(
      com_amap_api_services_geocoder_RegeocodeResult var1, int var2) async {
    super.onRegeocodeSearched(var1, var2);
    final result = await var1.getRegeocodeAddress();
    _streamController?.add(ReGeocode.android(result));
    _streamController?.close();
  }

  @override
  Future<void> onDriveRouteSearched(
    com_amap_api_services_route_DriveRouteResult var1,
    int var2,
  ) async {
    super.onDriveRouteSearched(var1, var2);
    _streamController?.add(DriveRouteResult.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onRideRouteSearched(
    com_amap_api_services_route_RideRouteResult var1,
    int var2,
  ) async {
    super.onRideRouteSearched(var1, var2);
    _streamController?.add(RideRouteResult.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onWalkRouteSearched(
    com_amap_api_services_route_WalkRouteResult var1,
    int var2,
  ) async {
    super.onWalkRouteSearched(var1, var2);
    _streamController?.add(WalkRouteResult.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onBusRouteSearched(
    com_amap_api_services_route_BusRouteResult var1,
    int var2,
  ) async {
    super.onBusRouteSearched(var1, var2);
    _streamController?.add(BusRouteResult.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onBusStationSearched(
      com_amap_api_services_busline_BusStationResult var1, int var2) async {
    super.onBusStationSearched(var1, var2);
    _streamController?.add(BusStation.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onDistrictSearched(
      com_amap_api_services_district_DistrictResult var1) async {
    super.onDistrictSearched(var1);
    _streamController?.add(District.android(var1));
    _streamController?.close();
  }

  @override
  Future<void> onWeatherLiveSearched(
    com_amap_api_services_weather_LocalWeatherLiveResult var1,
    int var2,
  ) async {
    super.onWeatherLiveSearched(var1, var2);
    // todo
  }

  @override
  Future<void> onWeatherForecastSearched(
    com_amap_api_services_weather_LocalWeatherForecastResult var1,
    int var2,
  ) async {
    super.onWeatherForecastSearched(var1, var2);
    _streamController?.add(Weather.android(var1));
    _streamController?.close();
  }
}

/// ios: 搜索监听
class _IOSSearchListener extends NSObject with AMapSearchDelegate {
  _IOSSearchListener(this._streamController);

  final StreamController _streamController;

  @override
  Future<void> onPOISearchDoneResponse(
    AMapPOISearchBaseRequest request,
    AMapPOISearchResponse response,
  ) async {
    super.onPOISearchDoneResponse(request, response);
    final poiList = [
      for (final item in (await response.get_pois())) Poi.ios(item)
    ];
    _streamController?.add(poiList);
    _streamController?.close();
  }

  @override
  Future<void> onInputTipsSearchDoneResponse(
    AMapInputTipsSearchRequest request,
    AMapInputTipsSearchResponse response,
  ) async {
    super.onInputTipsSearchDoneResponse(request, response);
    final inputTipList = [
      for (final item in (await response.get_tips())) InputTip.ios(item)
    ];
    _streamController?.add(inputTipList);
    _streamController?.close();
  }

  @override
  Future<void> onGeocodeSearchDoneResponse(
    AMapGeocodeSearchRequest request,
    AMapGeocodeSearchResponse response,
  ) async {
    super.onGeocodeSearchDoneResponse(request, response);
    final geocode = [
      for (final item in (await response.get_geocodes())) Geocode.ios(item)
    ];
    _streamController?.add(geocode);
    _streamController?.close();
  }

  @override
  Future<void> onReGeocodeSearchDoneResponse(
    AMapReGeocodeSearchRequest request,
    AMapReGeocodeSearchResponse response,
  ) async {
    super.onReGeocodeSearchDoneResponse(request, response);
    final reGeocode = ReGeocode.ios(await response.get_regeocode());
    _streamController?.add(reGeocode);
    _streamController?.close();
  }

  @override
  Future<void> onRouteSearchDoneResponse(
    AMapRouteSearchBaseRequest request,
    AMapRouteSearchResponse response,
  ) async {
    super.onRouteSearchDoneResponse(request, response);
    dynamic route;
    if (await isKindOfAMapDrivingRouteSearchRequest(request)) {
      route = DriveRouteResult.ios(await response.get_route());
    } else if (await isKindOfAMapWalkingRouteSearchRequest(request)) {
      route = WalkRouteResult.ios(await response.get_route());
    } else if (await isKindOfAMapBusLineBaseSearchRequest(request)) {
      route = BusRouteResult.ios(await response.get_route());
    } else if (await isKindOfAMapRidingRouteSearchRequest(request)) {
      route = RideRouteResult.ios(await response.get_route());
    }
    _streamController?.add(route);
    _streamController?.close();
  }

  @override
  Future<void> onBusStopSearchDoneResponse(
    AMapBusStopSearchRequest request,
    AMapBusStopSearchResponse response,
  ) async {
    super.onBusStopSearchDoneResponse(request, response);
    _streamController?.add(BusStation.ios(response));
    _streamController?.close();
  }

  @override
  Future<void> onDistrictSearchDoneResponse(
    AMapDistrictSearchRequest request,
    AMapDistrictSearchResponse response,
  ) async {
    super.onDistrictSearchDoneResponse(request, response);
    _streamController?.add(District.ios(response));
    _streamController?.close();
  }
}
