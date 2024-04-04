import 'package:flutter/material.dart';
import 'package:shopping_app/utils/color_constant.dart';
import 'package:shopping_app/utils/image_constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.tertiary,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: kToolbarHeight / 2 - 10,
            backgroundColor: ColorConstant.tertiary,
            foregroundImage: AssetImage(
              ImageConstant.menu,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstant.tertiary,
        selectedItemColor: ColorConstant.primary,
        unselectedItemColor: ColorConstant.primary,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: ColorConstant.primary,
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.add),
            label: 'New Order',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Return Order',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_outlined),
            label: 'Customers',
          ),
        ],
      ),
    );
  }
}
