


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/beranda.dart';
import '../views/kinerja_medis.dart';
import '../views/pengajuan_cuti.dart';
import '../views/profile.dart';

class Controller extends GetxController{
  // var count = 0.obs;
  // increment() => count++;

  late TextEditingController nikController;
  late TextEditingController passwordController;
  var invisible = true.obs;
  var bottomNavIndex = 0.obs;
  final navigation = [Beranda(),KinerjaMedis(),PengajuanCuti(), Profile()].obs;

  @override
  void onInit() {
    super.onInit();
    nikController = TextEditingController();
    passwordController = TextEditingController();
  }





}