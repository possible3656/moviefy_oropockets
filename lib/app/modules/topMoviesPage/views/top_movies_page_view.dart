import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefy_oropockets/app/data/color_res.dart';
import 'package:moviefy_oropockets/app/data/globalWidget/magic_scroll.dart';
import 'package:moviefy_oropockets/app/data/globalWidget/magic_spinner.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/views/widgets/bottom_navigation_bar.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/views/widgets/movie_list_item.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/views/widgets/top_movies_app_bar.dart';

import '../controllers/top_movies_page_controller.dart';

class TopMoviesPageView extends GetView<TopMoviesPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
        bgColor: ColorRes.backgroundColor,
        bottomNavigationBar: const BottomNavigation(),
        child: Obx(() => controller.loading.value
            ? const MagicSpinner()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    /**
                    * ? Appbar
                     * */

                    const TopMoviesAppBar(),
                    /**
                     * ? movies list view
                     */
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              controller.moviesDetailsModel.results.length,
                          itemBuilder: (context, index) => MovieListItem(
                              index: index, controller.moviesDetailsModel)),
                    )
                  ],
                ),
              )));
  }
}
