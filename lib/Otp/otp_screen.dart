import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class OtperificationScreen extends StatelessWidget {
  const OtperificationScreen({Key? key}) : super(key: key);

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
                    color: thirdColor,
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
                      'OTP Verification',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Please Check Your Email To See The\nVerification Code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text('Verify'),
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
