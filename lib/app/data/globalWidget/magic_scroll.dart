import 'package:flutter/material.dart';

import '../global_methods.dart';

class MagicScroll extends StatelessWidget {
  final Widget child;
  final          Color? bgColor;
  const MagicScroll({Key? key, required this.child, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: GlobalMethods.returnSize(context).height,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: child
            ),
          ),
        ),
      ),
    );
  }
}
