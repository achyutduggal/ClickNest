import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      backgroundColor: const Color(0xFFEFEFEF),
      borderRadius: BorderRadius.circular(8.0),
      placeholder: "Search",
      placeholderStyle: const TextStyle(
        color: Color(0xFF888888),
        fontSize: 16.0,
      ),
      prefixIcon: const Icon(
        CupertinoIcons.search,
        color: Color(0xFF888888),
      ),
      suffixIcon: const Icon(
        CupertinoIcons.clear_thick_circled,
        color: Color(0xFF888888),
      ),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
    );
  }
}
