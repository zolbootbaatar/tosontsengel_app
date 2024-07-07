// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'AppRouter.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppealDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AppealDetailRouteArgs>(
          orElse: () => const AppealDetailRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AppealDetailPage(
          key: args.key,
          title: args.title,
          icon: args.icon,
        ),
      );
    },
    AppealRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppealPage(),
      );
    },
    DonationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DonationPage(),
      );
    },
    EventDetialRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetialRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EventDetialPage(
          key: args.key,
          date: args.date,
        ),
      );
    },
    EventRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
  };
}

/// generated route for
/// [AppealDetailPage]
class AppealDetailRoute extends PageRouteInfo<AppealDetailRouteArgs> {
  AppealDetailRoute({
    Key? key,
    String? title,
    String? icon,
    List<PageRouteInfo>? children,
  }) : super(
          AppealDetailRoute.name,
          args: AppealDetailRouteArgs(
            key: key,
            title: title,
            icon: icon,
          ),
          initialChildren: children,
        );

  static const String name = 'AppealDetailRoute';

  static const PageInfo<AppealDetailRouteArgs> page =
      PageInfo<AppealDetailRouteArgs>(name);
}

class AppealDetailRouteArgs {
  const AppealDetailRouteArgs({
    this.key,
    this.title,
    this.icon,
  });

  final Key? key;

  final String? title;

  final String? icon;

  @override
  String toString() {
    return 'AppealDetailRouteArgs{key: $key, title: $title, icon: $icon}';
  }
}

/// generated route for
/// [AppealPage]
class AppealRoute extends PageRouteInfo<void> {
  const AppealRoute({List<PageRouteInfo>? children})
      : super(
          AppealRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppealRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DonationPage]
class DonationRoute extends PageRouteInfo<void> {
  const DonationRoute({List<PageRouteInfo>? children})
      : super(
          DonationRoute.name,
          initialChildren: children,
        );

  static const String name = 'DonationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventDetialPage]
class EventDetialRoute extends PageRouteInfo<EventDetialRouteArgs> {
  EventDetialRoute({
    Key? key,
    required String date,
    List<PageRouteInfo>? children,
  }) : super(
          EventDetialRoute.name,
          args: EventDetialRouteArgs(
            key: key,
            date: date,
          ),
          initialChildren: children,
        );

  static const String name = 'EventDetialRoute';

  static const PageInfo<EventDetialRouteArgs> page =
      PageInfo<EventDetialRouteArgs>(name);
}

class EventDetialRouteArgs {
  const EventDetialRouteArgs({
    this.key,
    required this.date,
  });

  final Key? key;

  final String date;

  @override
  String toString() {
    return 'EventDetialRouteArgs{key: $key, date: $date}';
  }
}

/// generated route for
/// [EventPage]
class EventRoute extends PageRouteInfo<void> {
  const EventRoute({List<PageRouteInfo>? children})
      : super(
          EventRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapPage]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
