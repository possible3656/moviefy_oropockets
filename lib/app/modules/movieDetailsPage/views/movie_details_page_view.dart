import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefy_oropockets/app/data/color_res.dart';
import 'package:moviefy_oropockets/app/modules/movieDetailsPage/views/widget/also_trending_view.dart';
import 'package:moviefy_oropockets/app/modules/movieDetailsPage/views/widget/background_image.dart';
import 'package:moviefy_oropockets/app/modules/movieDetailsPage/views/widget/movie_info.dart';

import '../controllers/movie_details_page_controller.dart';

class MovieDetailsPageView extends GetView<MovieDetailsPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    BackgroundImage(
                        asset:
                            'https://image.tmdb.org/t/p/original${controller.moviesDetailsModel.results[controller.index].backdropPath}'),
                    MovieInfo(
                      title: controller
                          .moviesDetailsModel.results[controller.index].title,
                      info:
                          "${controller.moviesDetailsModel.results[controller.index].releaseDate.year} • ${controller.returnGenre(controller.index)} • 2h 5m",
                      overview: controller.moviesDetailsModel
                          .results[controller.index].overview,
                      rating: controller.returnRatingOutOf5(),
                      callback: (() => controller.onBackPressed()),
                    ),
                  ],
                ),
                AlsoTrendingView(
                  index: controller.index,
                    itemCount: controller.moviesDetailsModel.results.length,
                    moviesDetailsModel: controller.moviesDetailsModel)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
