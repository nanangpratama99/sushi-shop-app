class Sashimi {
  String name;
  String imagePath;
  String rating;
  String price;

  Sashimi({
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

List SashimiMenu = [
  Sashimi(
    name: 'Sashimi',
    imagePath: 'assets/images/sashimi.png',
    rating: '4.3',
    price: '44.00',
  ),
  Sashimi(
    name: 'Sashimi',
    imagePath: 'assets/images/sashimi.png',
    rating: '4.3',
    price: '22.00',
  ),
  Sashimi(
    name: 'Sashimi',
    imagePath: 'assets/images/sashimi.png',
    rating: '4.3',
    price: '11.00',
  ),
  Sashimi(
    name: 'Sashimi',
    imagePath: 'assets/images/sashimi.png',
    rating: '4.3',
    price: '55.00',
  ),
];
