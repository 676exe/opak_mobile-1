import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomnavigationBarWidget extends StatelessWidget {
  const BottomnavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menü',
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            if (value == 0) {
              Get.toNamed("/menu");
            }
            if (value == 2) {
              Get.toNamed("/profil");
            }
          },
        ),
        Positioned(
          left: (MediaQuery.of(context).size.width - 56) / 2,
          bottom: 12,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 56.0,
              height: 56.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
