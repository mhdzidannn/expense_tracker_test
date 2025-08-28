import 'package:expense_tracker_test/pages/add_expenses_page.dart';
import 'package:expense_tracker_test/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationalUtil {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get rootKey => _rootNavigatorKey;
  static NavigatorState? get rootState => _rootNavigatorKey.currentState;
}

GoRouter createRouter() {
  return GoRouter(
    initialLocation: Routes.main._path,
    navigatorKey: NavigationalUtil.rootKey,
    routes: [
      _rootRoute(route: Routes.main, builder: (context, state) => const MainPage()),
      _rootRoute(route: Routes.addExpenses, builder: (context, state) => const AddExpensePage()),
    ],
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
  parentNavigatorKey: NavigationalUtil.rootKey,
);

enum Routes implements Comparable<Routes> {
  main(path: "/main", name: "main"),
  addExpenses(path: "/addExpenses", name: "addExpenses");

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
