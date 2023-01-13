import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> shoes = [
      'assets/images/pngaaa.png',
      'assets/images/PngItem_5550642 (2) 2.png',
      'assets/images/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 1.png',
      'assets/images/nike-ah8050110-air_max_270-1-e_prev_ui 2.png',
      'assets/images/nike-ah8050110-air_max_270-1-e_prev_ui 1.png',
      //   'assets/images/Hero Image (1).png',
    ];
    return Scaffold(
      backgroundColor: secondWhiteColor,
      body: Padding(
        padding: const EdgeInsets.only(
          //   vertical: 30.0,
          //   horizontal: 15.0,
          top: 35.0, left: 15.0, right: 15.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const Text('Sneaker Shop'),
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
              ],
            ),
            //
            //
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: SizedBox(
                height: 350.0,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                        top: 250.0,
                        child: Image.asset('assets/images/Ellipse 5 (1).png')),
                    Image.asset('assets/images/Hero Image.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Nike Air Max 270\nEssential',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text('Men"s Shoes'),
                        ),
                        Text(
                          '\$6179.7',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: shoes.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(
                    right: 7.0,
                    top: 10.0,
                  ),
                  //   padding: const EdgeInsets.symmetric(
                  //     vertical: 10.0,
                  //     horizontal: 10.0,
                  //   ),
                  height: 50,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    shoes[index],
                    //   width:,
                  ),
                ),
              ),
            ),
            //
            //
            //
            //
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Column(
                children: [
                  const Text(
                    'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
                    style: TextStyle(height: 1.5),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(),
                      Text(
                        'Read More',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        color: thirdColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset(
                        'assets/icons/Path.png',
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      height: 50.0,
                      width: 190.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                          Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
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
