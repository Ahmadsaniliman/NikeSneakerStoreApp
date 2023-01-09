import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';
import 'package:nike_sneaker_store_app/OnBoardingScreens/on_borading_screen.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: 400.0,
              child: Image.asset('assets/icons/Vector.png'),
            ),
            Positioned(
              top: 100.0,
              //   left: 30,
              child: Image.asset('assets/images/Spring_prev_ui 1.png'),
            ),
            Positioned(
              top: 100.0,
              left: 30,
              child: Image.asset('assets/icons/Vector (12).png'),
            ),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 420.0,
                    ),
                    child: Text(
                      'You Have the\nPower To',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                      bottom: 35.0,
                    ),
                    child: Text(
                      'There Are Many Beautiful And Attractive\nPlants To Your Room',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  //
                  // roller
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (index) => ChangeRoller(index: index),
                      ),
                    ],
                  ),
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 55.0,
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: secondWhiteColor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Center(
                        child: Text('Next'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
