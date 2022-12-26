import 'package:flutter/material.dart';

class SomeScaffold extends StatelessWidget {
  const SomeScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UnconstrainedBox(
        child: SizedBox(
          height: 480,
          child: Material(
            elevation: 5,
            shape: RoundedRectangleBorder(
                // side: BorderSide(),
                borderRadius: BorderRadius.circular(16)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 340, height: 480, child: Placeholder()),
                  if (MediaQuery.of(context).size.width > 720)
                    SizedBox(width: 340, height: 480, child: Placeholder())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
