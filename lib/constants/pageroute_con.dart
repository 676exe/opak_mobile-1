import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/views/giris_yapma_view.dart';

import '../controllers/maas_bilgileri_controller.dart';
import '../controllers/maas_controller.dart';
import '../controllers/maasbilgileri_donemsel_controller.dart';
import '../controllers/ana_menu_controller.dart';
import '../controllers/menu_1controller.dart';
import '../controllers/profil_controller.dart';
import '../views/maas_bilgileri_view.dart';
import '../views/maas_view.dart';
import '../views/maasbilgileri_donemsel_view.dart';
import '../views/ana_menu_view.dart';
import '../views/menu_view.dart';
import '../views/profil_view.dart';

class PagerouteCon {
  static final getPage = [
    GetPage(
      name: '/maasbilgileri_donemsel',
      page: () => const MaasbilgileriDonemselView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MaasbilgileriDonemselController>(
            () => MaasbilgileriDonemselController());
      }),
    ),
    GetPage(
      name: '/maas_bilgileri',
      page: () => const MaasBilgileriView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MaasBilgileriController>(() => MaasBilgileriController());
      }),
    ),
    GetPage(
      name: '/maas',
      page: () => const MaasView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<MaasController>(() => MaasController());
      }),
    ),
    GetPage(
      name: '/main_menu',
      page: () => const AnaMenuView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<AnaMenuController>(() => AnaMenuController());
      }),
    ),
    GetPage(
      name: '/menu',
      page: () => const MenuView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<Menu1Controller>(() => Menu1Controller());
      }),
    ),
    GetPage(
      name: '/profil',
      page: () => const ProfilView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<ProfilController>(() => ProfilController());
      }),
    ),
    GetPage(
      name: '/giris',
      page: () => GirisYapmaView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<GirisYapmaView>(() => GirisYapmaView());
      }),
    )
  ];

  static final unknownRoute =
      GetPage(name: '/sayfa-bulunamadi', page: () => const Placeholder());
}
