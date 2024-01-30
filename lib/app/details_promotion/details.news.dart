import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/asset/Image.assets.dart';
import 'package:merchant_app_staff/common/app.styles.dart';
import 'package:merchant_app_staff/component/icon.component.dart';
import 'package:merchant_app_staff/widgets/normal.appbar.dart';

class DetailsNews extends StatefulWidget {
  const DetailsNews({Key? key}) : super(key: key);

  @override
  State<DetailsNews> createState() => _DetailsNewsState();
}

class _DetailsNewsState extends State<DetailsNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        title: 'Chi tiết chương trình bán hàng',
        leadingIcon1: ImageAssets.iconCaretLeft,
        actionsIcon: ImageAssets.iconBell,
        leadingIcon: ImageAssets.iconTextAlignLeft,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Chính sách MUA 3 TẶNG 1',
                style: appStyles.textNormal(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: const Color(0xFF242424)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Thời gian bắt đầu: 14/10/2021',
                style: appStyles.textNormal(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF747475)),
              ),
              Text(
                'Thời gian kết thúc: 30/03/2022',
                style: appStyles.textNormal(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF747475)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Nội dung giới thiệu chương trình',
                style: appStyles.textNormal(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xFF242424)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Các nhà lãnh đạo luôn là người đi tiên phong. Họ tạo điều kiện cho sự thay đổi diễn ra, thay vì phản ứng với thay đổi. Tương lai cần đến sự lãnh đạo công ty với các kỹ năng lồng ghép nhiều sự kiện không lường trước và có vẻ đa dạng vào trong quá trình lập kế hoạch. Mỗi một tổ chức phải lập kế hoạch cho các thay đổi cần thiết để đạt được mục tiêu cuối cùng của mình. Lập kế hoạch một cách hiệu quả sẽ giúp cho tổ chức thích ứng với thay đổi nhờ xác định được các cơ hội và ngăn ngừa được các vấn đề vướng mắc. Lập kế hoạch sẽ định hướng cho các chức năng quản lý khác và định hướng để làm việc theo nhóm. Lập kế hoạch sẽ giúp cải thiện quá trình ra quyết định. Tất cả các cấp quản lý đều phải tham gia vào quá trình lập kế hoạch.',
                style: appStyles.textNormal(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF242424)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Dòng sản phẩm/sản phẩm áp dụng cho chương trình',
                style: appStyles.textNormal(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xFF242424)),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 23.0,
                  mainAxisSpacing: 11.0,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 95,
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Anh1.png',
                          width: 95,
                          height: 95,
                        ),
                        Text(
                          'Gạch lát tường 0910',
                          style: appStyles.textNormal(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF242424)),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 6,
              ),
              Text(
                'Các nhà phân phối tham gia',
                style: appStyles.textNormal(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: const Color(0xFF242424)),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  listService(
                      logo: 'assets/logo_prima.png',
                      agency: 'Đại lý Prime - ',
                      location: 'Hà Nội',
                      succses: '86%',
                      sales: '130.000.000đ'),
                  SizedBox(height: 15),
                  listService(
                      logo: 'assets/logo_hoangha.png',
                      agency: 'Đại lý Hoàng Hà - ',
                      location: 'Vĩnh Phúc',
                      succses: '67%',
                      sales: '89.980.000đ'),
                  SizedBox(height: 15),
                  listService(
                      logo: 'assets/logo_prima.png',
                      agency: 'Đại lý Prime - ',
                      location: 'Hà Nội',
                      succses: '86%',
                      sales: '130.000.000đ'),
                  SizedBox(height: 15),
                  listService(
                      logo: 'assets/logo_hoangha.png',
                      agency: 'Đại lý Hoàng Hà - ',
                      location: 'Vĩnh Phúc',
                      succses: '67%',
                      sales: '89.980.000đ'),
                ],
              ),
              // ListView.separated(
              //     itemBuilder: (context, index) {
              //       return ListAgency(logo: 'assets/logo_hoangha.png',
              //           agency: 'Đại lý Hoàng Hà - ',
              //           location: 'Vĩnh Phúc',
              //           success: '67%',
              //           sales: '89.980.000đ');
              //     },
              //     separatorBuilder: (BuildContext context, int index) {
              //       return const SizedBox.shrink();
              //     },
              //     itemCount: 10,
              //     padding: EdgeInsets.zero,
              //     addAutomaticKeepAlives: true),
              SizedBox(height: 15),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4)),
                            color: Color(0xFFCB473E),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF747475), blurRadius: 4),
                            ]),
                        height: 68,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4)),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(color: Color(0xFF9E9EA1), blurRadius: 2)
                            ]),
                        height: 140,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          width: 120,
                          height: 50,
                          child: Text(
                            'Chính sách thưởng khi đạt chỉ tiêu',
                            style: appStyles.textNormal(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: SvgPicture.asset(
                          'assets/gift.svg',
                          width: 99,
                          height: 60,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 55),
                    child: Container(
                      color: const Color(0xFFFFCC42),
                      width: 110,
                      height: 25,
                      child: Center(
                        child: Text(
                          'Thưởng tiền mặt',
                          style: appStyles.textNormal(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tỷ lệ hoàn thành 60 -> 80%: Thưởng 200 triệu',
                          style: appStyles.textNormal(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Text(
                            'Tỷ lệ hoàn thành: 81 -> 90%: Thưởng 300 triệu',
                            style: appStyles.textNormal(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Text(
                          'Tỷ lệ hoàn thành: 91 -> 100%: Thưởng 6 tỷ',
                          style: appStyles.textNormal(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listService({required String logo,
  required String agency,
  required String location,
  required String succses,
  required String sales}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
                            child: Text(location,
                                style: appStyles.textNormal(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: const Color(0xFFCB473E))),
                          )),
                    ])),
            Padding(
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15),
                              child: Text(succses,
                                  style: appStyles.textNormal(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                      color: const Color(0xFFCB473E))),
                            ))
                      ])),
            ),
            RichText(
                text: TextSpan(
                    text: 'Doanh số đạt được:',
                    style: appStyles.textNormal(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF747475)),
                    children: [
                      WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(sales,
                                style: appStyles.textNormal(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xFFCB473E))),
                          ))
                    ]))
          ],
        ),
      ],
    );
