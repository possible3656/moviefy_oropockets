import 'package:get/get.dart';

import '../controllers/movie_details_page_controller.dart';

class MovieDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieDetailsPageController>(
      () => MovieDetailsPageController(),
    );
  }
}
