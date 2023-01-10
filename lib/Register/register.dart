import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          //   vertical: 25.0,
          //   horizontal: 20.0,
          top: 25.0, left: 20.0, right: 20.0,
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
                    const Text('Your Name'),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: thirdLightColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '*******',
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 20.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text('Email Address'),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: thirdLightColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0),
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
                    const SizedBox(height: 10.0),
                    const Text('Password'),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: thirdLightColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10.0),
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
                    const SizedBox(height: 20.0),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text('Sign Up'),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 70.0,
                        ),
                        child: Container(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: thirdLightColor.withOpacity(0.2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Group 108.png'),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                'Sign In With Google',
                                // style: TextStyle(
                                //   color: Colors.white,
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already Have Account ?'),
                        const SizedBox(width: 10.0),
                        GestureDetector(
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
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
