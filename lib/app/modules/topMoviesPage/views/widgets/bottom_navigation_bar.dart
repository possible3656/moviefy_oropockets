import 'package:flutter/material.dart';

import '../../../../data/color_res.dart';
import '../../../../data/globalWidget/SvgImage.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: ColorRes.secondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          SvgImage(
            assets: 'assets/images/home.svg',
            height: 25,
            width: 25,
          ),
          SvgImage(
            assets: 'assets/images/top_movies.svg',
            height: 25,
            width: 25,
          ),
          SvgImage(
            assets: 'assets/images/movie.svg',
            height: 25,
            width: 25,
          ),
          SvgImage(
            assets: 'assets/images/statistics.svg',
            height: 25,
            width: 25,
          ),
        ],
      ),
    );
  }
}
