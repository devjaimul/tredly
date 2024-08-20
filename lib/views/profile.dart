import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tredly/utils/app_colors.dart';

import '../utils/text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeadingTwo(data: 'Profile'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: AppColors.primaryColor,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                ListTile(

                  leading: Container(
                    height: 200,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(BorderSide(color: Colors.white,width: 1))
                    ),
                    child: Center(
                      child: HeadingTwo(data: 'T'),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingTwo(data: 'Tradly Team'),
                      SizedBox(height: 4),
                      HeadingThree(data: '+1 9998887776'),
                      SizedBox(height: 4),
                      HeadingThree(data: 'info@tradly.co'),
                    ],
                  ),
                ),
                Container(
                  height: 230.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingFour(data: 'Edit Profile'),
                        Divider(),
                        HeadingFour(data: 'Language & Currency'),
                        Divider(),
                        HeadingFour(data: 'Feedback'),
                        Divider(),
                        HeadingFour(data: 'Refer a Friend'),
                        Divider(),
                        HeadingFour(data: 'Terms & Conditions'),
                        Divider(),
                        HeadingFour(
                          data: 'Logout',
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
