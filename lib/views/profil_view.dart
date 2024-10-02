import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/widgets/bottomnavigation_bar_widget.dart';
import 'package:opak_mobile/widgets/user_tile_widget.dart';

import '../controllers/profil_controller.dart';
import '../widgets/basit_bilgialan_wiget.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const UserTileWidget(),
          Expanded(
            child: GridView.builder(
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
                  background: controller.menuler[index][5],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
