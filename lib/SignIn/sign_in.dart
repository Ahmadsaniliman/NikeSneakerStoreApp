import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 20.0,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              //
              const SizedBox(height: 30.0),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Hello Again!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Fill your details or continue with\nsocial media',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              //
              //
              //
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email Address'),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: thirdLightColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'saniahmadliman@gmail.com',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text('Password'),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: thirdLightColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.visibility_off),
                          hintText: '**********',
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 15.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        bottom: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(),
                          Text('Recovery Password'),
                        ],
                      ),
                    ),
                    // Text
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Text('Get Started'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
