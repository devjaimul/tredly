import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tredly/widgets/product_tile.dart';

import 'details.dart';

class PopularProductTiles extends StatelessWidget {
  const PopularProductTiles({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'img': 'assets/categories/vegetables/img.png',
        'title': 'Carrot',
        'price': '25',
      },
      {
        'img': 'assets/categories/vegetables/img_1.png',
        'title': 'Cabbage',
        'price': '15',
      },
      {
        'img': 'assets/categories/vegetables/img_2.png',
        'title': 'Tomato',
        'price': '10',
      },
      {
        'img': 'assets/categories/vegetables/img_3.png',
        'title': 'Garlic',
        'price': '15',
      },
      {
        'img': 'assets/categories/vegetables/img_4.png',
        'title': 'Tomatoes',
        'price': '10',
      },
      {
        'img': 'assets/categories/vegetables/img_5.png',
        'title': 'Corn',
        'price': '15',
      },

      {
        'img': 'assets/categories/fruit/img.png',
        'title': 'Avocado',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_1.png',
        'title': 'Banana',
        'price': '15',
      },
      {
        'img': 'assets/categories/fruit/img_2.png',
        'title': 'Orange',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_3.png',
        'title': 'Papaya',
        'price': '15',
      },
      {
        'img': 'assets/categories/fruit/img_4.png',
        'title': 'Pineapple',
        'price': '10',
      },
      {
        'img': 'assets/categories/fruit/img_5.png',
        'title': 'Watermelon',
        'price': '15',
      },

    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){Get.to(DetailScreen(img: items[index]['img'], title: items[index]['title'],price: items[index]['price'],));},
              child: ProductTile(
                img: items[index]['img'],
                title: items[index]['title'],
                price: items[index]['price'],
                height: 160,
                width: 200,
              ),
            );
          },
        ),
      ),
    );
  }
}