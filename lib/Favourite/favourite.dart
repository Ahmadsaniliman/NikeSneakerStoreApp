import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';
import 'package:nike_sneaker_store_app/Model/model.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
//   final int _page = 0;
//   final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondWhiteColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: const [
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 15.0,
          //   right: 15.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
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
                      child:
                          Image.asset('assets/icons/Vector 175 (Stroke).png'),
                    ),
                  ),
                  const Text('Favourite'),
                  GestureDetector(
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        color: thirdColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset(
                        'assets/icons/Path.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  //   crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 0.95,
                ),
                itemCount: popularProducts.length,
                itemBuilder: (context, index) => PopularProductsF(
                  product: popularProducts[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopularProductsF extends StatelessWidget {
  const PopularProductsF({
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
        bottom: 10,
        left: 10.0,
        right: 10.0,
      ),
      height: 180.0,
      width: 165.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/icons/Vector (20).png',
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
                    const SizedBox(width: 35.0),
                    Row(
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
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
