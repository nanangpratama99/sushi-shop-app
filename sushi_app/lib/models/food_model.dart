class Food {
  String name;
  String imagePath;
  String rating;
  String price;

  Food({
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
