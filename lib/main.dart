import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tredly/routes/routes_names.dart';
import 'package:tredly/routes/routes_pages.dart';
import 'package:tredly/widgets/details.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,

     getPages: RoutePages.routes,
      initialRoute:RouteNames.customNavBar,
    );
  }
}

