import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/controllers/top_movies_page_controller.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

import '../../../../data/color_res.dart';
import '../../../../models/MoviesDetailsModel.dart';

class MovieListItem extends GetView<TopMoviesPageController> {
  final int index;
  final MoviesDetailsModel moviesDetailsModel;
  const MovieListItem(this.moviesDetailsModel, {Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: (() =>
            controller.onMoviePressed(index)),
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
                          Radius.circular(
                              10)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w400${moviesDetailsModel.results[index].backdropPath}'),
                          fit: BoxFit.cover),
                      color: Colors
                          .primaries[2].shade50),
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
                            MainAxisAlignment
                                .start,
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: [
                              if (index == 0)
                                Padding(
                                  padding:
                                  const EdgeInsets
                                      .only(
                                      bottom: 5),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons
                                            .military_tech_rounded,
                                        size: 22,
                                        color: Colors
                                            .amber,
                                      ),
                                      Text(
                                        "Top movie this week",
                                        style:
                                        TextStyle(
                                          color: Color(
                                              0xffcce5ff),
                                          fontSize:
                                          14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              Text(
                                moviesDetailsModel
                                    .results[index]
                                    .title,
                                maxLines: 3,
                                style:
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Inter",
                                  fontWeight:
                                  FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                  height: 4),
                              Text(
                                "Fantasy / Science Fiction\n${moviesDetailsModel.results[index].releaseDate.year}",
                                maxLines: 2,
                                style:
                                const TextStyle(
                                  color: Color(
                                      0xffcdced1),
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
                                      .circular(
                                      3)),
                              child: Padding(
                                padding:
                                const EdgeInsets
                                    .symmetric(
                                    vertical: 2,
                                    horizontal:
                                    5),
                                child: Row(
                                  children: [
                                    RatingStars(
                                      editable: false,
                                      rating: double.parse(
                                          controller
                                              .returnRatingOutOf5(
                                              index,moviesDetailsModel)),
                                      color: Colors
                                          .amber,
                                      iconSize: 16,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "${controller.returnRatingOutOf5(index,moviesDetailsModel)}/5",
                                      style:
                                      const TextStyle(
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
      ),
    );
  }
}
