import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key, this.body}) : super(key: key);
  final Widget? body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
