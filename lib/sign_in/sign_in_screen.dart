import 'package:flutter/material.dart';
import 'package:component_library/component_library.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExtraContentScaffold(
        child: Column(
          children: [
            Text(
              'Sign In',
              style: Theme.of(context).textTheme.headline5,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            )
          ],
        ),
        extraContent: Placeholder());
  }
}
