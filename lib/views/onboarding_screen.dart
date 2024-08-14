import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tredly/utils/app_colors.dart';
import 'package:tredly/views/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(20),
      child: IntroductionScreen(
        bodyPadding: const EdgeInsets.only(top: 20),
        globalBackgroundColor: Colors.white,

        pages: [
          PageViewModel(
            decoration: PageDecoration(bodyTextStyle: TextStyle(color: AppColors.buttonTextColors,fontSize: 22)),
              title: "",
              body: "Empowering Artisans, Farmers & Micro Business",
              image: Center(child: Image.asset('assets/images/img_1.png',),)
          ),
          PageViewModel(
              decoration: PageDecoration(bodyTextStyle: TextStyle(color: AppColors.buttonTextColors,fontSize: 22)),
              title: "",
              body: "Connecting NGOs, Social Enterprises with Communities",
              image: Center(child: Image.asset('assets/images/img_2.png'),)
          ),
          PageViewModel(
              decoration: PageDecoration(bodyTextStyle: TextStyle(color: AppColors.buttonTextColors,fontSize: 22)),
              title: "",
              body: " Donate, Invest & Support infrastructure projects",
              image: Center(child: Image.asset('assets/images/img_3.png',),)
          ),
        ],

        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skip: Text('Skip', style: TextStyle(color:AppColors.primaryColor)),
        next: const Icon(Icons.arrow_forward, color: Colors.green),
        done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color:AppColors.primaryColor)),
        dotsDecorator: DotsDecorator(
          activeColor: AppColors.primaryColor,
          color: AppColors.primaryColor.withOpacity(0.5),
        ),
      ),
    );
  }

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
  }
}