import 'package:flutter/material.dart';
import 'package:shopping_app/utils/color_constant.dart';
import 'package:shopping_app/utils/image_constant.dart';
import 'package:shopping_app/view/customers_screen/customers_screen.dart';
import 'package:shopping_app/view/empty_screen/empty_screen.dart';
import 'package:shopping_app/view/home_screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    EmptyScreen(),
    EmptyScreen(),
    EmptyScreen(),
    CustomersScreen(),
  ];

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
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        backgroundColor: ColorConstant.tertiary,
        selectedItemColor: ColorConstant.primary,
        unselectedItemColor: ColorConstant.primary,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 9,
        elevation: 50,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        onTap: (value) {
          pageIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.home,
              height: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.newOrderPrimary,
              height: 24,
            ),
            label: 'New Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.cart,
              height: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.returnOrderPrimary,
              height: 24,
            ),
            label: 'Return Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              ImageConstant.customersOutlined,
              height: 24,
            ),
            label: 'Customers',
          ),
        ],
      ),
    );
  }
}
