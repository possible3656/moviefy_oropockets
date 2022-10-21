import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GlobalMethods{
  static Size returnSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
  static showSnackBar(String message) {
    Get.showSnackbar(GetSnackBar(
      duration: const Duration(seconds: 3),
      message: message,
    ));
  }
}