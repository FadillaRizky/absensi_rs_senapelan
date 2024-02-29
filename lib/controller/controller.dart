


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  var count = 0.obs;
  increment() => count++;

  late TextEditingController nikController;
  late TextEditingController passwordController;
  var invisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    nikController = TextEditingController();
    passwordController = TextEditingController();
  }





}