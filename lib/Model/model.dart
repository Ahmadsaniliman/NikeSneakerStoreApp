class PopularProduct {
  final String name, title, price, image;
  bool favourite = false;

  PopularProduct({
    required this.name,
    required this.title,
    required this.price,
    required this.image,
  });
}

List<PopularProduct> popularProducts = [
  PopularProduct(
    name: 'Best Skiller',
    title: 'Nike Jordan',
    price: '\$302.2',
    image: 'assets/images/PngItem_5550642 (2) 2.png',
  ),
  PopularProduct(
    name: 'Best Skiller',
    title: 'Nike Air Max',
    price: '\$302.2',
    image:
        'assets/images/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 1.png',
  ),
  PopularProduct(
    name: 'Best Skiller',
    title: 'Nike Jordan',
    price: '\$302.2',
    image: 'assets/images/PngItem_5550642 (2) 2.png',
  ),
  PopularProduct(
    name: 'Best Skiller',
    title: 'Nike Jordan',
    price: '\$302.2',
    image: 'assets/images/PngItem_5550642 (2) 2.png',
  ),
];
