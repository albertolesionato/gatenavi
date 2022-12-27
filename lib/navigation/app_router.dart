import 'package:flutter/material.dart';
import 'link_config.dart';

class AppRouter extends RouterDelegate<LinkConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<LinkConfig> {
  AppRouter() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  LinkConfig get currentConfiguration => LinkConfig();

  bool onPopPage(Route<dynamic> route, dynamic result) {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: onPopPage,

    );
  }
}
