import 'package:flutter/material.dart';

import 'link_configuration.dart';

class AppRouteParser extends RouteInformationParser<LinkConfiguration> {
  @override
  Future<LinkConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    // TODO: Check the null condition. What to do if null?
    //final link = LinkConfiguration.fromLocation(routeInformation.location!);
    return LinkConfiguration();
  }

  @override
  RouteInformation restoreRouteInformation(LinkConfiguration configuration) {
    final location = '/'; //configuration.toLocation();
    return RouteInformation(location: location);
  }
}
