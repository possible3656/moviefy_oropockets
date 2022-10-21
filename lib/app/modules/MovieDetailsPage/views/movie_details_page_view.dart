import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/movie_details_page_controller.dart';

class MovieDetailsPageView extends GetView<MovieDetailsPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MovieDetailsPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MovieDetailsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
