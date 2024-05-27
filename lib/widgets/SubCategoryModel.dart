import 'package:clicknest/screens/SubCategScreen.dart';
import 'package:flutter/material.dart';

class SubCategoryModel extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategoryLabel;
  const SubCategoryModel({
    super.key,
    required this.mainCategoryName,
    required this.subCategoryName,
    required this.assetName,
    required this.subCategoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubCategoryProducts(
              subCategoryName: subCategoryName,
              mainCategoryName: mainCategoryName,
            ),
          ),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70.0,
            width: 70.0,
            child: Image(
              image: AssetImage(assetName),
            ),
          ),
          Text(subCategoryLabel),
        ],
      ),
    );
  }
}