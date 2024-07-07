import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tosontsengel_app/Screens/Home/Home.dart';
import 'package:tosontsengel_app/Screens/Map/MapScreen.dart';
import 'package:tosontsengel_app/Screens/News/NewsSceen.dart';
import 'package:tosontsengel_app/Screens/Event/EventScreen.dart';
import 'package:tosontsengel_app/Screens/Appeal/AppealScren.dart';
import 'package:tosontsengel_app/Screens/Event/Detial/EventDetialScreen.dart';

part 'AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, path: '/', page: HomeRoute.page),
        AutoRoute(path: '/news', page: NewsRoute.page),
        AutoRoute(path: '/map', page: MapRoute.page),
        AutoRoute(path: '/appeal', page: AppealRoute.page),
        AutoRoute(path: '/event', page: EventRoute.page),
        AutoRoute(path: '/eventdetial', page: EventDetialRoute.page),
      ];
}
