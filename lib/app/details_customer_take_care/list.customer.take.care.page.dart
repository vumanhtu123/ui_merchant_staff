import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merchant_app_staff/asset/Image.assets.dart';
import 'package:merchant_app_staff/common/app.styles.dart';
import 'package:merchant_app_staff/component/icon.component.dart';
import 'package:merchant_app_staff/widgets/normal.appbar.dart';

class CustomerTakeCare extends StatefulWidget {
  const CustomerTakeCare({Key? key}) : super(key: key);

  @override
  State<CustomerTakeCare> createState() => _CustomerTakeCareState();
}

class _CustomerTakeCareState extends State<CustomerTakeCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NormalAppBar2(
        title: "Danh sách khách hàng đang chăm sóc",
        leadingIcon1: ImageAssets.iconCaretLeft,
        actionsIcon: ImageAssets.iconBell,
        leadingIcon: ImageAssets.iconTextAlignLeft,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0x0fb7b7b7),
                  spreadRadius: 30,
                  blurRadius: 30,
                  offset: Offset(4, 4)),
            ]),
            child: Container(
              height: 40,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0x0fb7b7b7),
                    spreadRadius: 30,
                    blurRadius: 30,
                    offset: Offset(4, 4)),
              ]),
              child: TextField(
                style: appStyles.textNormal(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    color: const Color(0xFF747475)),
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Tìm kiếm...",
                    hintStyle: appStyles.textNormal(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF747475)),
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: SvgPicture.asset(
                        ImageAssets.iconSearch,
                        alignment: Alignment.center,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(left: 24, bottom: 5),
                    prefixIconConstraints:
                        const BoxConstraints(maxWidth: 13, maxHeight: 13)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Text(
              'Bạn đang chăm sóc 6 đại lý',
              style: appStyles.textBlack(
                  fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          SizedBox(height: 10),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
          ListIcon(
            ratio: false,
            logo: 'assets/logo_hoangha.png',
            agency: 'Đại lý Prime - ',
            location: 'Hà Nội',
            sales: '1000',
            tittleAchieved: 'Nợ hiện tại: ',
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
