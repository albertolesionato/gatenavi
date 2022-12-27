import 'package:flutter/material.dart';
import 'navigation/app_router.dart';
import 'navigation/app_route_parser.dart';


void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gatenavi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      backButtonDispatcher: RootBackButtonDispatcher(),
      routeInformationParser: AppRouteParser(),
      routerDelegate: appRouter,
    );
  }
}
