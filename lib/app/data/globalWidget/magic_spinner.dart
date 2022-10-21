import 'package:flutter/material.dart';
import 'package:moviefy_oropockets/app/data/color_res.dart';

class MagicSpinner extends StatelessWidget {
  final Color? color;
  final double? size;
  const MagicSpinner({Key? key, this.color, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: size??20,
            width: size??20,
              child: CircularProgressIndicator(
              color: color??ColorRes.primaryTextColor,strokeWidth: 2,
          ),
          ),
        ),
      ],
    );
  }
}
