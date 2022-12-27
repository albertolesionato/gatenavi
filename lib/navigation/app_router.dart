import 'package:flutter/material.dart';
import 'package:gatenavi/sign_in/sign_in_screen.dart';
import 'link_configuration.dart';

class AppRouter extends RouterDelegate<LinkConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<LinkConfiguration> {
  AppRouter() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  LinkConfiguration get currentConfiguration => LinkConfiguration();

  @override
  Future<void> setNewRoutePath(LinkConfiguration configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

  bool onPopPage(Route<dynamic> route, dynamic result) {
    return true;
  }

  Page createPage(Widget screen) {
    return MaterialPage(child: screen);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: onPopPage,
      pages: [
        createPage(SignInScreen())
      ],
    );
  }


}
