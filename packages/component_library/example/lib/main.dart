import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/some-scaffold': (_) => const Scaffold(
          backgroundColor: Colors.blue,
          body: SomeScaffold(),
        )
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example()
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/some-scaffold'), child:
            Text('SomeScaffold'))
          ],
        ),
      ),
    );
  }
}
