import 'package:get/get.dart';

import '../controllers/top_movies_page_controller.dart';

class TopMoviesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopMoviesPageController>(
      () => TopMoviesPageController(),
    );
  }
}
