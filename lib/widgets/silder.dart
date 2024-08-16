import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tredly/utils/text_style.dart';

import 'custom_button.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map> item = [
      {
        'img': 'assets/images/img_4.png',
      }
    ];

    return CarouselSlider.builder(
        itemCount: item.length,
        itemBuilder: (context, index, realIndex) {
          return Container(

            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  item[index]['img'],
                  fit: BoxFit.cover,
                height: 350,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 25),
                  child: Column(
                    children: [
                      const HeadingTwo(
                        data: 'Ready to deliver to\n your home',
                        fontSize: 16,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomElevatedButton(
                        onPressed: () {},
                        buttonText: 'Start Shopping',
                        buttonColor: Colors.transparent,
                        textColor: Colors.white,
                        fontSize: 14,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        options: CarouselOptions(
          height: 250,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
