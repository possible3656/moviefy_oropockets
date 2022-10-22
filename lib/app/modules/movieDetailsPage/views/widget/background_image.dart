import 'package:flutter/material.dart';

import '../../../../data/color_res.dart';
import '../../../../data/global_methods.dart';

class BackgroundImage extends StatelessWidget {
  final String asset;
  const BackgroundImage({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
        height: GlobalMethods.returnSize(context).height * .8,
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorRes.backgroundColor,
              ColorRes.backgroundColor,
              ColorRes.backgroundColor.withOpacity(.9),
              ColorRes.backgroundColor.withOpacity(.7),
              ColorRes.backgroundColor.withOpacity(.5),
              ColorRes.backgroundColor.withOpacity(.3),
              ColorRes.backgroundColor.withOpacity(.1),
              Colors.transparent
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            // stops: [0, 0.5],
          ),
        ),
        child: Container(
          height: GlobalMethods.returnSize(context).height * .8,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                     asset))),
        ));
  }
}
