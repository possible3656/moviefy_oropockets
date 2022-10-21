

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:moviefy_oropockets/app/data/global_methods.dart';
import 'package:moviefy_oropockets/app/models/MoviesDetailsModel.dart';

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
    print('getting Data');
    try {
      Response response = await Dio().get(Constants.TRENDING_MOVIE_URL,);
      loading.value=false;
      if(response.statusCode!=200){
        GlobalMethods.showSnackBar('Something went wrong. please try again later!');
        debugPrint('${response.statusCode}');
        return;
      }
      moviesDetailsModel=MoviesDetailsModel.fromJson(response.data);
    } catch (e) {
      loading.value=false;
      GlobalMethods.showSnackBar('Something went wrong. please try again later!');
      debugPrint('${e}');
    }
  }

  returnRatingOutOf5(int index) {
    return (moviesDetailsModel.results[index].voteAverage/2).toString().substring(0,3);
  }
}
