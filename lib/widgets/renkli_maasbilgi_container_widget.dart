import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class RenkliMaasbilgiContainerWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String amount;
  const RenkliMaasbilgiContainerWidget({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: EdgeCon.symlistI,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyleCon.negativeTitle,
            ),
          ),
          Text(
            amount,
            style: TextStyleCon.negativeTitle,
          ),
        ],
      ),
    );
  }
}
