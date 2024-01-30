import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/common/app.styles.dart';

class MySliverAppBar extends StatelessWidget {
  final double expandedHeight;

  const MySliverAppBar({super.key, required this.expandedHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 116,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF007AFE),
                  Color(0xFF53A0F5),
                ],
                stops: [0.0, 1.0],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/TextAlignLeft.svg',
                      width: 15,
                      height: 15,
                    )),
                Text(
                  'Công ty Apodio - HRM',
                  style: appStyles.textNormal(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFFFFFFF)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/Bell.svg',
                      width: 15,
                      height: 15,
                    )),
              ],
            ),
          ),
          Positioned(
              top: expandedHeight - 70 - 0,
              child: Opacity(
                opacity: (1 - 0 / expandedHeight),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            '30 triệu',
                            style: appStyles.textNormal(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF325EA5)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Doanh thu \n tháng này',
                            style: appStyles.textNormal(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFF242424)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            '12',
                            style: appStyles.textNormal(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF325EA5)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Đại lý \n khách hàng',
                            style: appStyles.textNormal(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFF242424)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 94,
                      height: 94,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(blurRadius: 1, color: Color(0xFFE5E5E5))
                          ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            '90%',
                            style: appStyles.textNormal(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF325EA5)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            'KPI đã \n hoàn thành',
                            textAlign: TextAlign.center,
                            style: appStyles.textNormal(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xFF242424)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
