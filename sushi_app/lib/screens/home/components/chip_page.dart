import 'package:flutter/material.dart';

class SelectedChipPage extends StatelessWidget {
  final int index;

  const SelectedChipPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Chip Page'),
      ),
      body: Center(
        child: Text('This is page for index $index'),
      ),
    );
  }
}
