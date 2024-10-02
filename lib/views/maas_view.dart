import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/controllers/maas_controller.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';
import 'package:opak_mobile/widgets/bottomnavigation_bar_widget.dart';

class MaasView extends GetView<MaasController> {
  const MaasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maaş Sayfası'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemCount: controller.menuler.length,
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
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
