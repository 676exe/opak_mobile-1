import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/maas_bilgileri_controller.dart';
import '../widgets/donemsel_maas_grafigi_widget.dart';
import '../widgets/donemselmaasbilgisi_card_widget.dart';

class MaasBilgileriView extends GetView<MaasBilgileriController> {
  const MaasBilgileriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dönemsel Maaş Bilgileri"),
      ),
      body: Column(
        children: [
          DonemselmaasbilgisiCardWidget(maaslar: controller.maaslar),
          const Expanded(child: DonemselMaasGrafigiWidget())
        ],
      ),
    );
  }
}
