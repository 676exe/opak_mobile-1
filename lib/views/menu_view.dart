import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';

import '../controllers/menu_1controller.dart';

class MenuView extends GetView<Menu1Controller> {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menü'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: controller.menuler.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return BasitBilgialanWiget(
            string: controller.menuler[index][0],
            iconData: controller.menuler[index][1],
            route: controller.menuler[index][2],
            remove: controller.menuler[index][3],
            color: controller.menuler[index][4],
            background:  controller.menuler[index][5],
          );
        },
      ),
    );
  }
}
