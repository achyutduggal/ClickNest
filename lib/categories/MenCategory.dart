import 'package:clicknest/utils/categ_list.dart';
import 'package:clicknest/widgets/CategoryHeadingLabel.dart';
import 'package:clicknest/widgets/SubCategoryModel.dart';
import 'package:flutter/material.dart';


class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryHeadingLabel(
            heading: 'Men',
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
                    mainCategoryName: 'men ',
                    subCategoryName: men[index],
                    assetName: 'images/men/men$index.jpg',
                    subCategoryLabel: men[index],
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


