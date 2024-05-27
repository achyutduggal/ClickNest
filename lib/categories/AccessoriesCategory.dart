import 'package:clicknest/utils/categ_list.dart';
import 'package:clicknest/widgets/CategoryHeadingLabel.dart';
import 'package:clicknest/widgets/SubCategoryModel.dart';
import 'package:flutter/material.dart';


class AccessoriesCategory extends StatelessWidget {
  const AccessoriesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHeadingLabel(
            heading: 'Accessories',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 70.0,
              crossAxisSpacing: 15.0,
              children: List.generate(
                men.length,
                    (index) {
                  return SubCategoryModel(
                    mainCategoryName: 'Accessories',
                    subCategoryName: accessories[index],
                    assetName: 'images/accessories/accessories$index.jpg',
                    subCategoryLabel: accessories[index],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}


