import 'package:clicknest/utils/categ_list.dart';
import 'package:clicknest/widgets/CategoryHeadingLabel.dart';
import 'package:clicknest/widgets/SubCategoryModel.dart';
import 'package:flutter/material.dart';


class WomenCategory extends StatelessWidget {
  const WomenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHeadingLabel(
            heading: 'Women',
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
                    mainCategoryName: 'Women',
                    subCategoryName: women[index],
                    assetName: 'images/women/women$index.jpg',
                    subCategoryLabel: women[index],
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


