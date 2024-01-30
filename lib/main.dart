import 'package:flutter/material.dart';
import 'package:merchant_app_staff/app/details_agency/details.agency.page.dart';
import 'package:merchant_app_staff/app/details_order/details.order.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailsAgency(),
    );
  }
}
