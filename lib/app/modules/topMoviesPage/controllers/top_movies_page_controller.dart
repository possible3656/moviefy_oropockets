import 'package:dio/dio.dart' as dio;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:moviefy_oropockets/app/data/global_methods.dart';
import 'package:moviefy_oropockets/app/models/MoviesDetailsModel.dart';
import 'package:moviefy_oropockets/app/routes/app_pages.dart';

import '../../../data/Constants.dart';

class TopMoviesPageController extends GetxController {
  var loading = true.obs;
  late MoviesDetailsModel moviesDetailsModel;

  @override
  void onInit() {
    getTrendingMovies();
    super.onInit();
  }

  Future<void> getTrendingMovies() async {
    debugPrint('getting Data');
    try {
      dio.Response response = await dio.Dio().get(
        Constants.TRENDING_MOVIE_URL,
      );
      loading.value = false;
      if (response.statusCode != 200) {
        GlobalMethods.showSnackBar(
            'Something went wrong. please try again later!');
        debugPrint('${response.statusCode}');
        return;
      }
      moviesDetailsModel = MoviesDetailsModel.fromJson(response.data);
    } catch (e) {
      loading.value = false;
      GlobalMethods.showSnackBar(
          'Something went wrong. please try again later!');
      debugPrint('$e');
    }
  }

  returnRatingOutOf5(int index, MoviesDetailsModel moviesDetailsModel) {
    return (moviesDetailsModel.results[index].voteAverage / 2)
        .toString()
        .substring(0, 3);
  }

  onMoviePressed(int index) {
    Get.toNamed(Routes.MOVIE_DETAILS_PAGE, arguments: {
      Constants.INDEX: index,
      Constants.MOVIE_DETAILS_MODEL: moviesDetailsModel
    });
  }
}
