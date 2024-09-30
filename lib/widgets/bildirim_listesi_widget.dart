import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class BildirimListesiWidget extends StatelessWidget {
  final List<String> bildirimler;
  const BildirimListesiWidget({
    super.key,
    required this.bildirimler,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Column(
          children: [
            const Padding(
              padding: EdgeCon.miniBaslik,
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: ColorCon.takvim,
                  ),
                  Text(
                    "Bildirimler",
                    style: TextStyleCon.miniTitle,
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: bildirimler.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.notifications,
                      ),
                      title: Text(bildirimler[index]),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
