import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';
import 'package:nike_sneaker_store_app/Model/model.dart';
// import 'package:nike_sneaker_store_app/';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//      int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int selectedOne = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> textCategory = [
      'All Stores',
      'OutDoor',
      'Training',
      'Tenis',
    ];
    return Scaffold(
      backgroundColor: secondWhiteColor,
//     bottomNavigationBar: CurvedNavigationBar(
//     backgroundColor: Colors.blueAccent,
//     items: const [
//       Icon(Icons.add, size: 30),
//       Icon(Icons.list, size: 30),
//       Icon(Icons.compare_arrows, size: 30),
//     ],
//     onTap: (index) {
//       //Handle button tap
//     },
//   ),
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.0,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Looking For Shoes',
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 15.0,
                          ),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Image.asset('assets/images/sliders.png'),
                    ),
                  ],
                ),
              ),
              //
              //
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Select Category',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: textCategory.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedOne = index;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                            right: 20.0,
                            top: 10.0,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15.0,
                          ),
                          height: 40,
                          // width: 70.0,
                          decoration: BoxDecoration(
                            color: selectedOne == index
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(),
                          ),
                          child: Center(
                            child: Text(
                              textCategory[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //
              //
              //
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Popular Shoes',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularProducts.length,
                        itemBuilder: (context, index) => PopularProducts(
                          product: popularProducts[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'New Arrivals',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 110.0,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 20.0,
                            left: 20.0,
                          ),
                          height: 90.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              15.0,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Summer Sale',
                                style: TextStyle(fontSize: 13.0),
                              ),
                              const SizedBox(height: 5.0),
                              Image.asset('assets/images/15% OFF.png'),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -20,
                          right: 0,
                          child: Image.asset(
                            'assets/images/Spring_prev_ui 1.png',
                            width: 150.0,
                          ),
                        ),
                        Positioned(
                          top: 30.0,
                          right: 110.0,
                          child: Image.asset('assets/images/Misc_06.png'),
                        ),
                      ],
                    ),
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

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
    required this.product,
  }) : super(key: key);
  final PopularProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      padding: const EdgeInsets.only(
        top: 10.0,
        // bottom: 10,
        left: 10.0,
      ),
      height: 180.0,
      width: 155.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/icons/Vector (19).png',
          ),
          Positioned(
            // top: 20.0,
            child: Image.asset(product.image),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 05.0),
                Text(product.title),
                Row(
                  children: [
                    Text(product.price),
                    const SizedBox(width: 60.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
