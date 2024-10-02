import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/controllers/maas_bilgileri_controller.dart';
import 'package:opak_mobile/widgets/maasbilgi_row_widget.dart';
import 'package:opak_mobile/widgets/renkli_maasbilgi_container_widget.dart';


class MaasbilgileriDonemselView extends GetView<MaasBilgileriController> {
  const MaasbilgileriDonemselView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maaş Bilgileri'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeCon.card,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dönem',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Temmuz - 24',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            MaasbilgiRowWidget(
                icon: Icons.account_balance_wallet,
                title: 'Ücret (P.Gün: 30 / T.Gün: 31)',
                amount: '28.407,36 TL',
                amountColor: Colors.black),
            MaasbilgiRowWidget(
                icon: Icons.access_time,
                title: 'Saat Ücreti (-2.00)',
                amount: '-244,36 TL',
                amountColor: Colors.red),
            MaasbilgiRowWidget(
                icon: Icons.card_giftcard,
                title: 'Prim Vefa',
                amount: '200,00 TL',
                amountColor: Colors.green),
            MaasbilgiRowWidget(
                icon: Icons.star,
                title: 'Prim Yetkinlik',
                amount: '1.943,00 TL',
                amountColor: Colors.green),
            MaasbilgiRowWidget(
                icon: Icons.check_circle,
                title: 'Prim Devamlılık',
                amount: '750,00 TL',
                amountColor: Colors.green),
            SizedBox(height: 16),
            RenkliMaasbilgiContainerWidget(
                color: Colors.orange,
                icon: Icons.money,
                title: 'Avans',
                amount: '10.000,00 TL'),
            RenkliMaasbilgiContainerWidget(
                color: Colors.blue,
                icon: Icons.attach_money,
                title: 'Ödeme Tutarı',
                amount: '21.055,97 TL'),
            RenkliMaasbilgiContainerWidget(
                color: Colors.green,
                icon: Icons.monetization_on,
                title: 'Toplam',
                amount: '31.056,00 TL'),
          ],
        ),
      ),
    );
  }
}
