import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
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
              top: 40.0,
              child: Image.asset('assets/images/image 3.png'),
            ),
            //
            //
            Positioned(
              top: 530.0,
              left: 30,
              child: Image.asset('assets/icons/Vector (15).png'),
            ),
            Positioned(
              top: 470.0,
              right: 30.0,
              child: Image.asset('assets/icons/Vector (14).png'),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70.0,
                      bottom: 20.0,
                    ),
                    child: Image.asset('assets/icons/Wellcome To Nike.png'),
                  ),
                  Image.asset('assets/icons/www.png'),
                  Image.asset('assets/icons/Vector (12).png'),
                  const SizedBox(height: 440.0),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
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
                        child: Text('Get Started'),
                      ),
                    ),
                  )
                ],
              ),
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
//                       bottom: 20.0,
//                       top: 80.0,
//                     ),
//                     child: Image.asset('assets/icons/Wellcome To Nike.png'),
//                   ),
//                   Image.asset('assets/icons/www.png'),
//                   Stack(
//                     children: [
//                       Positioned(
//                         top: 60.0,
//                         left: 50.0,
//                         child: Image.asset('assets/icons/Vector (12).png'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),