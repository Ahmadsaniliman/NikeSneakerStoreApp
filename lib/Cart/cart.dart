import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 15.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: thirdColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child:
                          Image.asset('assets/icons/Vector 175 (Stroke).png'),
                    ),
                  ),
                  const SizedBox(width: 100.0),
                  const Text(
                    'My Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('3 item'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: primaryColor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.add, color: Colors.white),
                            Icon(Icons.remove, color: Colors.white),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          right: 40.0,
                          left: 10.0,
                        ),
                        height: 100.0,
                        width: 260.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: whiteColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 65.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: thirdColor.withOpacity(0.4),
                              ),
                              child: Image.asset(
                                'assets/images/pngaaa.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('Nike Club Max'),
                                  Text('\$684.95'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
