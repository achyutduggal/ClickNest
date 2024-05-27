import 'package:clicknest/widgets/SearchBar.dart';
import 'package:clicknest/widgets/TabWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: SearchWidget(),

          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Color(0xffB47E68),
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              TabWidget(
                label: 'Men',
              ),
              TabWidget(
                label: 'Women',
              ),
              TabWidget(
                label: 'Shoes',
              ),
              TabWidget(
                label: 'Bags',
              ),
              TabWidget(
                label: 'Electronics',
              ),
              TabWidget(
                label: 'Accessories',
              ),
              TabWidget(
                label: 'Home & Garden',
              ),
              TabWidget(
                label: 'Kids',
              ),
              TabWidget(
                label: 'Beauty',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
            Center(
              child: Text('dummy'),
            ),
          ],
        ),
      ),
    );
  }
}




