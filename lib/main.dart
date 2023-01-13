import 'package:flutter/material.dart';
import 'package:nike_sneaker_store_app/Constants/colors.dart';
import 'package:nike_sneaker_store_app/Details/details.dart';
import 'package:nike_sneaker_store_app/Favourite/favourite.dart';
import 'package:nike_sneaker_store_app/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Sneakers Store App',
      theme: ThemeData(),
      home: const FavouriteScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 250.0),
          child: Column(
            children: [
              Image.asset(
                'assets/icons/Vector (10).png',
              ),
              const SizedBox(height: 10.0),
              Image.asset(
                'assets/images/NIke (1).png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
