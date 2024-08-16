import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    List <Map> item=[
      {'img':'assets/images/img_4.png',}
    ];

    return CarouselSlider.builder(
        itemCount: item.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //color: Colors.white,
              image: DecorationImage(image: AssetImage(item[index]['img']),fit: BoxFit.cover),
            ),
          );
        },
        options: CarouselOptions(
          height: 250,
          aspectRatio: 16 / 10,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
