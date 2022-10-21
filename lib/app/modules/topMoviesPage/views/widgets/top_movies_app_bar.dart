import 'package:flutter/material.dart';

import '../../../../data/color_res.dart';

class TopMoviesAppBar extends StatelessWidget {
  const TopMoviesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Top Movies",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          Icons.search,
          color: ColorRes.secondaryTextColor,
        )
      ],
    );
  }
}
