import 'package:expense_tracker_test/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter() {
  return GoRouter(
    initialLocation: Routes.home._path,
    navigatorKey: _rootNavigatorKey,
    routes: [_rootRoute(route: Routes.home, builder: (context, state) => const HomePage())],
  );
}

GoRoute _rootRoute({
  required Routes route,
  GoRouterWidgetBuilder? builder,
  GoRouterPageBuilder? pageBuilder,
  GoRouterRedirect? redirect,
  List<RouteBase> routes = const <RouteBase>[],
}) => GoRoute(
  path: route.path,
  routes: routes,
  builder: builder,
  name: route.name,
  pageBuilder: pageBuilder,
  redirect: redirect,
  parentNavigatorKey: _rootNavigatorKey,
);

enum Routes implements Comparable<Routes> {
  home(path: "/home", name: "home");

  const Routes({required String path, required String name}) : _path = path, _name = name;

  String get path => _path;

  String get name => _name;

  final String _path;
  final String _name;

  @override
  int compareTo(Routes other) => path.length - other.path.length;
}

extension RoutesX on Routes {
  String withParams(Map<String, String> params) {
    var path = this.path;
    for (var entry in params.entries) {
      path = path.replaceAll(':${entry.key}', entry.value);
    }
    return path;
  }
}
