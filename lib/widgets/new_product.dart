import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tredly/widgets/details.dart';
import 'package:tredly/widgets/product_tile.dart';

import '../utils/app_colors.dart';
import 'custom_button.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        'img': 'assets/categories/beverages/img.png',
        'title': 'Strawberry Punch',
        'price': '25',
      },
      {
        'img': 'assets/categories/beverages/img_1.png',
        'title': 'Lemonade',
        'price': '15',
      },
      {
        'img': 'assets/categories/beverages/img_2.png',
        'title': 'Chocolate Bakery',
        'price': '10',
      },
      {
        'img': 'assets/categories/beverages/img_3.png',
        'title': 'Whisky',
        'price': '22',
      },
      {
        'img': 'assets/categories/beverages/img_4.png',
        'title': 'Chocolate Bakery',
        'price': '30',
      },
      {
        'img': 'assets/categories/beverages/img_5.png',
        'title': 'Fruit Punch',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img.png',
        'title': 'Bread Chocolate',
        'price': '25',
      },
      {
        'img': 'assets/categories/breadBakery/img_1.png',
        'title': 'Circle Bakery',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img_2.png',
        'title': 'Cookies',
        'price': '10',
      },
      {
        'img': 'assets/categories/breadBakery/img_3.png',
        'title': 'Long Bread',
        'price': '15',
      },
      {
        'img': 'assets/categories/breadBakery/img_4.png',
        'title': 'Donut',
        'price': '30',
      },
      {
        'img': 'assets/categories/breadBakery/img_5.png',
        'title': 'Bread',
        'price': '15',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'New Product',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Sort By',
                  icon: Icons.filter_list,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Location',
                  icon: Icons.location_on,
                ),
                CustomIconButton(
                  onPressed: () {},
                  buttonText: 'Category',
                  icon: Icons.storage,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: GridView.builder(
            
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              mainAxisSpacing: 4,
              crossAxisSpacing: 2,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){Get.to(DetailScreen(img: items[index]['img'], title: items[index]['title'],price: items[index]['price'],));},
                child: ProductTile(
                  img: items[index]['img'],
                  title: items[index]['title'],
                  price: items[index]['price'],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
