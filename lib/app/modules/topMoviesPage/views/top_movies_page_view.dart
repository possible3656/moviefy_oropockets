import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefy_oropockets/app/data/color_res.dart';
import 'package:moviefy_oropockets/app/data/globalWidget/magic_scroll.dart';
import 'package:moviefy_oropockets/app/data/globalWidget/magic_spinner.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/views/widgets/top_movies_app_bar.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

import '../controllers/top_movies_page_controller.dart';

class TopMoviesPageView extends GetView<TopMoviesPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
        bgColor: ColorRes.backgroundColor,
        child: Obx(() => controller.loading.value
            ? const MagicSpinner()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    /**
               * ? Appbar
               */

                    const TopMoviesAppBar(),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.moviesDetailsModel.results.length,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: ColorRes.secondaryColor),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                            image: DecorationImage(
                                                image: NetworkImage('https://api.themoviedb.org${controller
                                                    .moviesDetailsModel
                                                    .results[index]
                                                    .backdropPath}')),
                                            color: Colors.primaries[2].shade50),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 6,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .moviesDetailsModel
                                                          .results[index]
                                                          .title,
                                                      maxLines: 3,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: "Inter",
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 4),
                                                    const Text(
                                                      "Fantasy / Science Fiction\n2019",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xffcdced1),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff252634),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 2,
                                                          horizontal: 5),
                                                      child: Row(
                                                        children: [
                                                          RatingStars(
                                                            editable: false,
                                                            rating: double.parse(controller.returnRatingOutOf5(index)),
                                                            color: Colors.amber,
                                                            iconSize: 16,
                                                          ),
                                                          const SizedBox(
                                                            width: 2,
                                                          ),
                                                           Text(
                                                            "${controller.returnRatingOutOf5(index)}/5",
                                                            style:const TextStyle(
                                                              color: Color(
                                                                  0xffcdced1),
                                                              fontSize: 12,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ))
                  ],
                ),
              )));
  }
}
