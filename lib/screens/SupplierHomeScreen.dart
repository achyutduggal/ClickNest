import 'package:clicknest/screens/Home.dart';
import 'package:clicknest/screens/CategoryScreen.dart';
import 'package:clicknest/screens/ProfileScreen.dart';
import 'package:clicknest/screens/StoresScreen.dart';
import 'package:clicknest/screens/CartScreen.dart';
import 'package:flutter/material.dart';

class SupplierHomeScreen extends StatefulWidget {
  const SupplierHomeScreen({super.key});

  @override
  State<SupplierHomeScreen> createState() => _SupplierHomeScreenState();
}

class _SupplierHomeScreenState extends State<SupplierHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    HomeScreen(),
    CategoryPage(),
    StoresScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffB47E68),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: 'Upload',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex =  index;
          });
        },
      ),
    );
  }
}
