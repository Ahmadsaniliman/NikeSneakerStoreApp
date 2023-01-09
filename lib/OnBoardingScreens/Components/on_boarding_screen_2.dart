import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';
import 'package:nike_sneaker_store_app/OnBoardingScreens/on_borading_screen.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
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
              top: 350.0,
              child: Image.asset('assets/icons/Vector.png'),
            ),
            Positioned(
              top: 230.0,
              left: 30,
              child: Image.asset('assets/icons/Spring_prev_ui 1.png'),
            ),
            Positioned(
              top: 50.0,
              left: 30,
              child: Image.asset('assets/icons/Vector (14).png'),
            ),
            Positioned(
              top: 50.0,
              right: 30,
              child: Image.asset('assets/icons/Vector (12).png'),
            ),
            Column(
              children: const [],
            ),
          ],
        ),
      ),
    );
  }
}

// Center(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 70.0,
//                       bottom: 20.0,
//                     ),
//                     child: Image.asset('assets/icons/Wellcome To Nike.png'),
//                   ),
//                   Image.asset('assets/icons/www.png'),
//                   Image.asset('assets/icons/Vector (12).png'),
//                   const SizedBox(height: 300.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       ...List.generate(
//                         3,
//                         (index) => ChangeRoller(
//                           index: index,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 140.0),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 25.0,
//                       left: 15.0,
//                       right: 15.0,
//                     ),
//                     child: Container(
//                       height: 50.0,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: secondWhiteColor,
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       child: const Center(
//                         child: Text('Get Started'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),