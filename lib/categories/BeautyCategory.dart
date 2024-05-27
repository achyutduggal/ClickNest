import 'package:clicknest/utils/categ_list.dart';
import 'package:clicknest/widgets/CategoryHeadingLabel.dart';
import 'package:clicknest/widgets/SubCategoryModel.dart';
import 'package:flutter/material.dart';


class BeautyCategory extends StatelessWidget {
  const BeautyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHeadingLabel(
            heading: 'Beauty',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.68,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 70.0,
              crossAxisSpacing: 15.0,
              children: List.generate(
                beauty.length,
                    (index) {
                  return SubCategoryModel(
                    mainCategoryName: 'Beauty',
                    subCategoryName: beauty[index],
                    assetName: 'images/beauty/beauty$index.jpg',
                    subCategoryLabel: beauty[index],
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


