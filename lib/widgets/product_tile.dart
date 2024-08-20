import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tredly/utils/app_colors.dart';
import 'package:tredly/utils/text_style.dart';

class ProductTile extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final double? height;
  final double? width;

  const ProductTile(
      {super.key,
      required this.img,
      required this.title,
      required this.price,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).r,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15).r,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius:  BorderRadius.only(
                    topRight: Radius.circular(15).r,
                    topLeft: Radius.circular(15)).r,
                child: SizedBox(
                    height: height ?? null,
                    width: width ?? null,
                    child: Image.asset(
                      img,
                      fit: BoxFit.cover,
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    height: 8.h,
                  ),
                  HeadingTwo(
                    data: title,
                    color: Colors.black,
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 22.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                shape: BoxShape.circle),
                            child: const Center(child: HeadingTwo(data: 'T')),
                          ),
                           SizedBox(
                            width: 5.w,
                          ),
                          HeadingThree(
                            data: 'Tredly',
                            color: Colors.black.withOpacity(0.6),
                          )
                        ],
                      ),
                      HeadingTwo(
                        data: '৳ $price',
                        color: AppColors.primaryColor,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
