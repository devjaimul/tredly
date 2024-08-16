import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tredly/utils/text_style.dart';

import '../utils/app_colors.dart';
import '../widgets/silder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: SafeArea(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            color: AppColors.primaryColor,
            //height: 100,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HeadingTwo(data: 'Groceries',fontSize: 25,),
                      Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              const Icon(
                                CupertinoIcons.cart_fill,
                                color: Colors.white,
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    fillColor: Colors.white,
                      filled: true,
                      hintText: '  Search Product',
                      hintStyle:  TextStyle(color: Colors.black.withOpacity(0.5)),
                      prefixIcon: Icon(Icons.search,color: AppColors.primaryColor,),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      )),

                ),

              ],
            ),
          ),
          SizedBox(height: 10,),
          SliderScreen()



        ],
      ),
    ),
    );
  }
}