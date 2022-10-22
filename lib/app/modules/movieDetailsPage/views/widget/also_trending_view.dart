import 'package:flutter/material.dart';
import 'package:moviefy_oropockets/app/models/MoviesDetailsModel.dart';

import '../../../topMoviesPage/views/widgets/movie_list_item.dart';

class AlsoTrendingView extends StatelessWidget {
  final int itemCount, index;

  final MoviesDetailsModel moviesDetailsModel;

  const AlsoTrendingView(
      {Key? key, required this.itemCount, required this.moviesDetailsModel, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Also trending",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Inter",
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemCount,
                itemBuilder: (context, index) => index == this.index
                    ? Container()
                    : MovieListItem(index: index, moviesDetailsModel)),
          )
        ],
      ),
    );
  }
}
