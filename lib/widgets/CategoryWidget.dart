import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> categories;
  final Function(String) onCategoryTap;

  CategoryWidget(
      {Key? key,
      required this.categories,
      required this.onCategoryTap,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.0,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onCategoryTap(categories[index]),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffB47E68),
            ),
            child: Text(
              categories[index],
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}
