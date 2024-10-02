import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class YemekListesiWidget extends StatelessWidget {
  final Map<String, String> menuler;
  const YemekListesiWidget({super.key, required this.menuler});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      decoration: BoxDecorCon.siyahGolge(ColorCon.sVardiya),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Yemek Listesi",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: menuler.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        menuler.keys.elementAt(index),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                      const SizedBox(height: 8),
                      const Icon(Icons.restaurant_menu,
                          size: 40, color: Colors.red),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
