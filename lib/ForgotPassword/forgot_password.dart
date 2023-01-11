import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          left: 20.0,
          right: 20.0,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: thirdColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset('assets/icons/Vector 175 (Stroke).png'),
                ),
              ),
              //
              const SizedBox(height: 10.0),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Enter Your Email Account To Reset\nYour Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: thirdLightColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '**********',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15.0,
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () async {
                  //   await AboutDialog();
                },
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text('Reset Password'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Container(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 20.0,
//                         horizontal: 20.0,
//                       ),
//                       height: 100.0,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 40.0,
//                             width: 40.0,
//                             decoration: BoxDecoration(
//                               color: Colors.blue,
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             child: Image.asset('asdsets/images/.png'),
//                           ),
//                           const Text('Check Your Email'),
//                           const Text(
//                               'We Have Send Passsword Recovery\nCode Your Email'),
//                         ],
//                       ),
//                     ),