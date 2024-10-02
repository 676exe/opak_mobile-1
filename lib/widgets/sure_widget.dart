import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';


class SureWidget extends StatelessWidget {
  const SureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Giriş: 07:45",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text("Çıkış: 18:06",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text("Toplam: 10s 21dk",
              style: TextStyle(fontSize: 14, color: Colors.red)),
        ],
      ),
    );
  }
}
