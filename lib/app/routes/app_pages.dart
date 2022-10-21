import 'package:get/get.dart';

import 'package:moviefy_oropockets/app/modules/movieDetailsPage/bindings/movie_details_page_binding.dart';
import 'package:moviefy_oropockets/app/modules/movieDetailsPage/views/movie_details_page_view.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/bindings/top_movies_page_binding.dart';
import 'package:moviefy_oropockets/app/modules/topMoviesPage/views/top_movies_page_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TOP_MOVIES_PAGE;

  static final routes = [

    GetPage(
      name: _Paths.TOP_MOVIES_PAGE,
      page: () => TopMoviesPageView(),
      binding: TopMoviesPageBinding(),
    ),
    GetPage(
      name: _Paths.MOVIE_DETAILS_PAGE,
      page: () => MovieDetailsPageView(),
      binding: MovieDetailsPageBinding(),
    ),
  ];
}
