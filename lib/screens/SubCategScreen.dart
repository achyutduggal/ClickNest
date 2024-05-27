import 'package:flutter/material.dart';

class SubCategoryProducts extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  const SubCategoryProducts(
      {super.key,
      required this.subCategoryName,
      required this.mainCategoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          subCategoryName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(mainCategoryName),
      ),
    );
  }
}
