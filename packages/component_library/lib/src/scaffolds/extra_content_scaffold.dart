import 'package:flutter/material.dart';

class ExtraContentScaffold extends StatelessWidget {
  const ExtraContentScaffold({Key? key, required this.child, required this.extraContent})
      : super(key: key);

  final Widget child;
  final Widget extraContent;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UnconstrainedBox(
        child: SizedBox(
          height: 480,
          child: Material(
            elevation: 8,
            shape: RoundedRectangleBorder(
                // side: BorderSide(),
                borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 340, height: 480, child: extraContent),
                  if (MediaQuery.of(context).size.width > 752) ...[
                    const SizedBox(width: 24),
                    SizedBox(width: 340, height: 480, child: child)
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
