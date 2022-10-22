import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moviefy_oropockets/app/data/Constants.dart';
import 'package:moviefy_oropockets/app/models/MoviesDetailsModel.dart';

class MovieDetailsPageController extends GetxController {
  late int index ;
  late MoviesDetailsModel moviesDetailsModel;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Map arguments = Get.arguments;
    index=arguments[Constants.INDEX];
    moviesDetailsModel=arguments[Constants.MOVIE_DETAILS_MODEL];
    debugPrint('$index and $moviesDetailsModel');
  }

  String returnRatingOutOf5() {
    return (moviesDetailsModel.results[index].voteAverage / 2)
        .toString()
        .substring(0, 3);
  }

  returnGenre(index) {

    String genreString = '';
    List genreList = moviesDetailsModel.results[index].genreIds;
    for (int i = 0; i < genreList.length; i++) {
      debugPrint(Constants.genreMap[genreList.elementAt(i).toString()]);
      genreString +=
      '${Constants.genreMap[genreList.elementAt(i).toString()] ?? ''}';
      if (i < genreList.length - 1) {
        genreString +=
        Constants.genreMap[genreList.elementAt(i).toString()] == null
            ? ''
            : ' / ';
      }
    }
    return genreString;
  }

  onBackPressed() {
    Get.back();
  }


}
