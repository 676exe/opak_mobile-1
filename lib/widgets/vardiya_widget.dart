import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class VardiyaWidget extends StatelessWidget {
  const VardiyaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      decoration: BoxDecorCon.siyahGolge(ColorCon.sVardiya),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Vardiya",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("08:00 - 18:00", style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
