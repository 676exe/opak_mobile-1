import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class KidemGunuWidget extends StatelessWidget {
  const KidemGunuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      decoration: BoxDecorCon.siyahGolge(ColorCon.sKidem),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Kıdem Gününüz",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(height: 8),
          Text("1 yıl 11 ay 16 gün",
              style:
                  TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0))),
        ],
      ),
    );
  }
}
