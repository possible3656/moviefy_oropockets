import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String assets;
  final double? height, width;

  const SvgImage({Key? key, required this.assets, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assets,
      height: height,
      width: width,
    );
  }
}
