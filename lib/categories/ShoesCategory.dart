import 'package:flutter/material.dart';
import 'package:clicknest/utils/categ_list.dart';
import 'package:clicknest/widgets/CategoryHeadingLabel.dart';
import 'package:clicknest/widgets/SubCategoryModel.dart';


class ShoesCategory extends StatelessWidget {
  const ShoesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHeadingLabel(
            heading: 'Shoes',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 70.0,
              crossAxisSpacing: 15.0,
              children: List.generate(
                shoes.length,
                    (index) {
                  return SubCategoryModel(
                    mainCategoryName: 'shoes',
                    subCategoryName: shoes[index],
                    assetName: 'images/shoes/shoes$index.jpg',
                    subCategoryLabel: shoes[index],
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


