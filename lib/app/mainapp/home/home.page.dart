import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/app/mainapp/home/component/news.items.dart';
import 'package:merchant_app_staff/app/mainapp/home/component/home.component.dart';
import 'package:merchant_app_staff/common/app.styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySliverAppBar(expandedHeight: 150),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                'Tính năng bạn hay truy cập',
                style: appStyles.textNormal(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF242424)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                        ]),
                    width: 66,
                    height: 66,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/order_img.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Đơn hàng',
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color(0xFF747475)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                        ]),
                    width: 66,
                    height: 66,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/word_img.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Công việc',
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color(0xFF747475)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                        ]),
                    width: 66,
                    height: 66,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/flag_img.png',
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Viếng thăm',
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color(0xFF747475)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                'Các chương trình bán hàng đang triển khai',
                style: appStyles.textNormal(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF242424)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      selectindex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    var scale = selectindex == index ? 1.1 : 0.8;
                    return TweenAnimationBuilder(
                        tween: Tween(begin: scale, end: scale),
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 300),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: scale,
                            child: child,
                          );
                        },
                        child: const News());
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Danh sách khách hàng đang chăm sóc',
                  style: appStyles.textNormal(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF242424)),
                ),
                Text(
                  'Xem tất cả',
                  style: appStyles.textNormal(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF213660)),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.symmetric(vertical: 11),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                listService(
                    logo: 'assets/logo_prima.png',
                    agency: 'Đại lý Prime - ',
                    location: 'Hà Nội',
                    owe: '14.000.000đ'),
                listService(
                    logo: 'assets/logo_hoangha.png',
                    agency: 'Đại lý Hoàng Hà - ',
                    location: 'Vĩnh Phúc',
                    owe: '0đ'),
                listService(
                    logo: 'assets/logo_prima.png',
                    agency: 'Đại lý Prime - ',
                    location: 'Hà Nội',
                    owe: '14.000.000đ'),
                listService(
                    logo: 'assets/logo_hoangha.png',
                    agency: 'Đại lý Hoàng Hà - ',
                    location: 'Vĩnh Phúc',
                    owe: '0đ'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget listService(
        {required String logo,
        required String agency,
        required String location,
        required String owe}) =>
    Row(
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
            logo,
            width: 40,
            height: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: SizedBox(
            width: 176,
            height: 31,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                        text: agency,
                        style: appStyles.textNormal(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF242424)),
                        children: [
                      TextSpan(
                          text: location,
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color(0xFFCB473E)))
                    ])),
                RichText(
                    text: TextSpan(
                        text: 'Tổng nợ hiện tại: ',
                        style: appStyles.textNormal(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF747475)),
                        children: [
                      TextSpan(
                          text: owe,
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: const Color(0xFFCB473E)))
                    ]))
              ],
            ),
          ),
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/phone.svg',
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SvgPicture.asset(
                'assets/location.svg',
                width: 20,
                height: 20,
              ),
            ),
            SvgPicture.asset(
              'assets/market.svg',
              width: 20,
              height: 20,
            ),
          ],
        )
      ],
    );
