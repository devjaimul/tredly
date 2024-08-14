
import 'package:flutter/material.dart';
import 'package:tredly/views/signup_screen.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();
  final bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingTwo(data: 'Welcome to Tredly',fontSize: 30,),
                  SizedBox(
                    height: 80,
                  ),
                  HeadingThree(
                    data: 'Login to your account',
                     fontSize: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: '  Email/Mobile Number',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your Email";
                  } else if (!value.contains('@')) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: _obscureText,
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: '  Password',
                    hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your password";
                  } else if (value.length < 8) {
                    return "password invalid";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // if (_key.currentState!.validate()) {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => ,));
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,),
                  child:  HeadingTwo(
                    data: 'Login',
                    color: AppColors.buttonTextColors,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){

              }, child: const HeadingTwo(data: 'Forgot your password?')),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SingUpScreen(),
                    ));
              }, child: const HeadingTwo(data: 'Don’t have an account? Sign up'))
            ],
          ),
        ),
      ),
    );
  }
}
