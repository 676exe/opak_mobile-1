import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';
import 'package:dotted_border/dotted_border.dart';

class GirisYapmaView extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GirisYapmaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ColorCon.backGradient,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DottedBorder(
                borderType: BorderType.Circle,
                color: Colors.white,
                dashPattern: const [12, 12],
                padding: const EdgeInsets.all(6),
                child: const CircleAvatar(
                  foregroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/D4D03AQE1hZCswa8wtQ/profile-displayphoto-shrink_200_200/0/1714775679073?e=2147483647&v=beta&t=fcpxehg35iOKJvHKltTOaFhB05rLnm7DkxFDI-kqVLE",
                  ),
                  backgroundColor: Colors.white,
                  maxRadius: 50,
                ),
              ),
              const Text(
                'Hoşgeldiniz',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeCon.card,
                padding: EdgeCon.card,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(155, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeCon.card,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.black),
                          labelText: 'Kullanıcı Adı',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeCon.card,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelStyle: const TextStyle(color: Colors.black),
                            labelText: 'Şifre',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed('/main_menu');
                        },
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
              ),
              const Text(
                'Şifremi Unuttum',
                style: TextStyleCon.negative,
              ),
              const SizedBox(
                height: 20,
              )
            ],

          ),
        ),
      ),
    );
  }
}
