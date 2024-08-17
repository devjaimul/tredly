import 'package:flutter/material.dart';
import 'package:tredly/utils/app_colors.dart';
import 'package:tredly/utils/text_style.dart';

class ProductTile extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  const ProductTile({super.key, required this.img, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(15),
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
                borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                child: Image.asset(img,fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8,),
                  HeadingTwo(data: title,color: Colors.black,),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle
                            ),
                            child: const Center(child: HeadingTwo(data: 'T')),
                          ),
                          const SizedBox(width: 5,),
                          HeadingThree(data: 'Tredly',color: Colors.black.withOpacity(0.6),)
                        ],
                      ),
                      HeadingTwo(data: '৳ $price',color: AppColors.primaryColor,)
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
