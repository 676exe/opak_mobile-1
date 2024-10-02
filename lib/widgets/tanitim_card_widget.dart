import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TanitimCardWidget extends StatelessWidget {
  const TanitimCardWidget({
    super.key,
    required this.context,
    required this.route,
    required this.title,
    required this.icon,
  });

  final BuildContext context;
  final String route;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(route);
      },
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(icon, size: 40, color: Colors.blue),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
