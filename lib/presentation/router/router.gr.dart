// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AgifyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const AgifyScreen()),
      );
    }
  };
}

/// generated route for
/// [AgifyScreen]
class AgifyRoute extends PageRouteInfo<void> {
  const AgifyRoute({List<PageRouteInfo>? children})
      : super(
          AgifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgifyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
