import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/common/app.styles.dart';

class ListIcon extends StatelessWidget {
  String? logo;
  String? agency;
  String? location;
  String? success;
  String? sales;
  String? tittleAchieved;
  bool? ratio;

  ListIcon(
      {Key? key,
      required this.logo,
      required this.agency,
      required this.location,
      this.success,
      this.ratio,
      this.tittleAchieved,
      required this.sales})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 23,
        ),
        Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
              ]),
          child: Image.asset(
            logo ?? "",
            width: 40,
            height: 30,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    text: agency,
                    style: appStyles.textNormal(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF242424)),
                    children: [
                  WidgetSpan(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(location ?? "",
                        style: appStyles.textNormal(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: const Color(0xFFCB473E))),
                  )),
                ])),
            (ratio == true)
                ? Visibility(
                    visible: ratio ?? true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: RichText(
                          text: TextSpan(
                              text: 'Tỷ lệ hoàn thành:',
                              style: appStyles.textNormal(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF747475)),
                              children: [
                            WidgetSpan(
                                child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(success ?? "",
                                  style: appStyles.textNormal(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      color: const Color(0xFFCB473E))),
                            ))
                          ])),
                    ))
                : const SizedBox(
                    height: 4,
                  ),
            RichText(
                text: TextSpan(
                    text: tittleAchieved ?? 'Doanh số đạt được:',
                    style: appStyles.textNormal(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF747475)),
                    children: [
                  WidgetSpan(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(sales ?? "",
                        style: appStyles.textNormal(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: const Color(0xFFCB473E))),
                  ))
                ]))
          ],
        ),
        const SizedBox(width: 70),
        Row(
          children: [
            SvgPicture.asset(
              'assets/phone.svg',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SvgPicture.asset(
                'assets/location.svg',
              ),
            ),
            SvgPicture.asset(
              'assets/market.svg',
            ),
          ],
        ),
      ],
    );
  }
}
