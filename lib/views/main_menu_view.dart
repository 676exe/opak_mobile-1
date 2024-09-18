import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';

import '../widgets/user_tile_widget.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const UserTileWidget(),
          const IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kıdem Gününüz"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("1 yıl"),
                                Text("11 ay"),
                                Text("16 gün")
                              ],
                            ),
                            Icon(
                              Icons.directions_walk_sharp,
                              size: 50,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vardiya"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.directions_walk_sharp,
                              size: 50,
                            ),
                            Column(
                              children: [
                                Text("N0818.Vardiya"),
                                Text("08:00 - 18:00"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: ColorCon.takvim,
                            ),
                          ),
                          TextSpan(
                            text: "  22.08.2024 - Perşembe",
                            style: TextStyle(
                              color: ColorCon.takvim,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "10 Sa. 21 Dk.",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                const IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Giriş: 07:45"),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Çıkış 18:06"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Net Süre"),
                              Text("9 Sa."),
                            ],
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox())
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Yemek Listesi"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.food_bank_outlined,
                      size: 50,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const Card(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.dining_outlined),
                                  Text("Yemek Menüsü")
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      size: 50,
                    ),
                    Text("Bildirimler")
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        title: Text("30 Ağustps Bilfilendirmesi HK."),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
