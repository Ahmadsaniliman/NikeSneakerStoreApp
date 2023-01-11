import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: [
            Image.asset('assets/images/Group 1000000742.png'),
          ],
        ),
      )),
    );
  }
}
