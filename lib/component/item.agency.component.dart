import 'package:flutter/material.dart';
import 'package:merchant_app_staff/common/app.styles.dart';

class ItemAgency extends StatelessWidget {
  const ItemAgency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 314,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2.5,
                blurRadius: 1.5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                width: 66,
                height: 15,
                decoration: const BoxDecoration(
                    color: Color(0xFFCB473E),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(30))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                  child: Text(
                    '20/09 - Thứ 5',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Đại lý Hoàng Phúc Ceramic -',
                          style: appStyles.textBlueDark2(
                              fontWeight: FontWeight.w600, fontSize: 12),
                          children: [
                        TextSpan(
                            text: ' Vĩnh Phúc',
                            style: appStyles.textRed(
                                fontWeight: FontWeight.w600, fontSize: 12))
                      ])),
                  Text(
                    'Check in: 08:15',
                    style: appStyles.textNormal(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  Text(
                    'Check out: 08:15',
                    style: appStyles.textNormal(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
