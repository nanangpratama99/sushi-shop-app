import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: TextFormField(
        style: const TextStyle(fontSize: 15),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          hintText: 'Search for anytying ...',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              'assets/images/search.png',
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}
