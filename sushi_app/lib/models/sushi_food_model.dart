class Sushi {
  String name;
  String imagePath;
  String rating;
  String price;

  Sushi({
    required this.name,
    required this.imagePath,
    required this.rating,
    required this.price,
  });

  String get _name => name;
  String get _imagePath => imagePath;
  String get _rating => rating;
  String get _price => price;
}

List SushiMenu = [
  Sushi(
    name: 'Sushi',
    imagePath: 'assets/images/sushi.png',
    rating: '4.3',
    price: '44.00',
  ),
  Sushi(
    name: 'Sushi',
    imagePath: 'assets/images/sushi-1.png',
    rating: '4.3',
    price: '22.00',
  ),
  Sushi(
    name: 'Sushi',
    imagePath: 'assets/images/sushi-2.png',
    rating: '4.3',
    price: '11.00',
  ),
  Sushi(
    name: 'Sushi',
    imagePath: 'assets/images/sushi-3.png',
    rating: '4.3',
    price: '55.00',
  ),
];
