import 'dart:async';


import 'package:flutter/material.dart';

import 'package:tredly/views/onboarding.dart';


import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/img.png',height: 126,width: 126,),
              const SizedBox(
                height: 10,
              ),
              const HeadingTwo(
                data: 'Tredly',
                color:Colors.white ,
                fontSize: 30,
              )
            ],
          ),
        ));
  }
}