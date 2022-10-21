import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/top_movies_page_controller.dart';

class TopMoviesPageView extends GetView<TopMoviesPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TopMoviesPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TopMoviesPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
