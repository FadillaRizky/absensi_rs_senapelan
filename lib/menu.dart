import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  var controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.navigation[controller.bottomNavIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.bottomNavIndex.value,
          onTap: (index) {
            controller.bottomNavIndex.value = index;
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_alt_outlined,
              ),
              label: 'Kinerja Medis',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.note_outlined,
              ),
              label: 'Pengajuan Cuti',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: 'Profil',
            ),
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      );
    });
  }
}
