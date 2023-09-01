class ChipMenuData {
  String name;
  String imageIcon;

  ChipMenuData({
    required this.name,
    required this.imageIcon,
  });
}

List<ChipMenuData> chipMenuItem = [
  ChipMenuData(name: 'Sushi', imageIcon: 'assets/images/sushi.png'),
  ChipMenuData(name: 'Sashimi', imageIcon: 'assets/images/onigiri.png'),
  ChipMenuData(name: 'Onigiri', imageIcon: 'assets/images/sashimi.png'),
  ChipMenuData(name: 'Ramen', imageIcon: 'assets/images/ramen.png'),
];
