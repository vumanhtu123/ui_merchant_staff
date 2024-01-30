import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/app/details_agency/component/details.order.item.dart';
import 'package:merchant_app_staff/asset/Image.assets.dart';
import 'package:merchant_app_staff/common/app.styles.dart';
import 'package:merchant_app_staff/component/item.agency.component.dart';
import 'package:merchant_app_staff/widgets/normal.appbar.dart';
import 'package:merchant_app_staff/widgets/button.custom.widget.dart';

class DetailsAgency extends StatefulWidget {
  const DetailsAgency({Key? key}) : super(key: key);

  @override
  State<DetailsAgency> createState() => _DetailsAgencyState();
}

class _DetailsAgencyState extends State<DetailsAgency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        title: 'Đại lý Hoàng Phú Ceramic',
        leadingIcon1: ImageAssets.iconCaretLeft,
        actionsIcon: ImageAssets.iconBell,
        leadingIcon: ImageAssets.iconTextAlignLeft,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ItemAgency(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
              width: 314,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
                boxShadow: const [BoxShadow(color: Color(0xFF716C6C))],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF007AFE),
                          Color(0xFF53A0F5),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 1.0),
                        stops: [0.0, 1.0],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Công nợ',
                        style: appStyles.textWhite(
                            fontSize: 12, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            text: '14.900.000',
                            style: appStyles.textRed(
                                fontWeight: FontWeight.w600, fontSize: 12),
                            children: [
                          TextSpan(text: 'đ', style: appStyles.textBlack())
                        ])),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(children: [
                BigButton(
                  function: () {},
                  text: 'Đơn Hàng',
                  widths: 110,
                ),
                BigButton(
                    function: () {}, text: 'Lịch sử viếng thăm', widths: 100),
                BigButton(
                    function: () {}, text: 'Danh sách sản phẩm', widths: 100)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: 14,
                    height: 14,
                    child: InkWell(
                      child: SvgPicture.asset(ImageAssets.iconCaretLeft,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    'Tháng 11',
                    style: appStyles.textNormal(
                        fontWeight: FontWeight.w400, fontSize: 10),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: Text(
                      'Tháng 12/2021',
                      style: appStyles.textBlack(
                          fontSize: 12, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 314,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: const [BoxShadow(color: Color(0xFF716C6C))]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Đơn hàng',
                        style: appStyles.textNormal(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '4',
                        style: appStyles.textBlack(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tổng tiền',
                        style: appStyles.textNormal(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '318.300.000đ',
                        style: appStyles.textBlack(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView(
              padding: const EdgeInsets.only(left: 20),
              primary: false,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ItemOrder(),
                ItemOrder(),
                ItemOrder(),
                ItemOrder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
