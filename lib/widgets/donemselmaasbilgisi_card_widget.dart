import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/icon_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class DonemselmaasbilgisiCardWidget extends StatelessWidget {
  final List<List<String>> maaslar;
  const DonemselmaasbilgisiCardWidget({
    super.key,
    required this.maaslar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeCon.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeCon.miniBaslik,
            child: Text(
              "Dönemsel Maaş Bilgisi - Haziran 3035",
              style: TextStyleCon.miniTitle,
            ),
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    IconCon.payments,
                    height: 70,
                  )),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    for (var item in maaslar)
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              item[0],
                            ),
                          ),
                          const Text(
                            "-",
                            textAlign: TextAlign.end,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              item[1],
                              textAlign: TextAlign.end,
                              style: const TextStyle(color: Colors.green),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
