import 'package:clicknest/categories/AccessoriesCategory.dart';
import 'package:clicknest/categories/BagsCategory.dart';
import 'package:clicknest/categories/BeautyCategory.dart';
import 'package:clicknest/categories/ElectronicsCategory.dart';
import 'package:clicknest/categories/HomeandGardenCategory.dart';
import 'package:clicknest/categories/KidsCategory.dart';
import 'package:clicknest/categories/MenCategory.dart';
import 'package:clicknest/categories/ShoesCategory.dart';
import 'package:clicknest/categories/WomenCategory.dart';
import 'package:clicknest/widgets/CategoryWidget.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<String> categories = [
    'Men',
    'Women',
    'Shoes',
    'Bags',
    'Electronics',
    'Accessories',
    'Home & Garden',
    'Kids',
    'Beauty'
  ];
  final List<String> images = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fmen-clothes-shopping&psig=AOvVaw2owAyprb0rrS45JvB_Fsln&ust=1715541709560000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCICs-IyphoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.business-standard.com%2Findustry%2Fnews%2Fwhy-is-shopping-becoming-more-individualistic-across-urban-india-123050300296_1.html&psig=AOvVaw2lQDSO7E46LlDfiVOmXgJj&ust=1715542214034000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOi0_vaqhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.myntra.com%2Fmen-footwear&psig=AOvVaw0UQWeoQU47kIHuFdT9IODU&ust=1715542243169000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJC-homrhoYDFQAAAAAdAAAAABAR',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.whatshot.in%2Fpune%2Ftop-bag-stores-in-pune-c-26210&psig=AOvVaw3bIS6kln_cZG08VDpQ4XlQ&ust=1715542338317000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJDAn7irhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.pinterest.com%2Fpin%2Fwhy-opt-for-smartphones-electronic-online-shopping-in-ghana--818951513477211415%2F&psig=AOvVaw2J-FuersgFMPSj_pfbJirO&ust=1715542311311000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKjdoqWrhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Flbb.in%2Fmumbai%2Fcluster-accessories-on-colaba-causeway-b851af%2F&psig=AOvVaw1rgJBRYLoTDCxLe66vU9Vn&ust=1715542380703000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLjtpMerhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.trees.com%2Fgardening-and-landscaping%2Fonline-gardening-stores&psig=AOvVaw0fnWIXtVBZoQRMDXZlu0C6&ust=1715542415698000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCLjyotWrhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fin.fashionnetwork.com%2Fnews%2FFirstcry-s-pine-kids-launches-first-exclusive-brand-outlet-in-kanpur%2C1557169.html&psig=AOvVaw3LOmBG5PH4pcN1DUQr3nLE&ust=1715542467631000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCNjt1PKrhoYDFQAAAAAdAAAAABAE',
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.livemint.com%2Fcompanies%2Fnews%2Freliance-preps-beauty-app-tira-1st-store-opens-in-apr-11678124360894.html&psig=AOvVaw22fWFdBTzYVADPrwkCQKaY&ust=1715542508206000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPDYz4OshoYDFQAAAAAdAAAAABAJ'
  ];

  final List<Widget> screens = [
    MenCategory(),
    WomenCategory(),
    ShoesCategory(),
    BagsCategory(),
    ElectronicsCategory(),
    AccessoriesCategory(),
    HomeandGardenCategory(),
    KidsCategory(),
    BeautyCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: CategoryWidget(
        categories: categories,
        onCategoryTap: (category) {
          int index = categories.indexOf(category);
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => screens[index]));
        },
      ),
    );
  }
}
