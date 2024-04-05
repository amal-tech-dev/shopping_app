import 'package:flutter/material.dart';
import 'package:shopping_app/utils/image_constant.dart';
import 'package:shopping_app/view/home_screen/home_screen_widgets/home_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          childAspectRatio: 1.3,
        ),
        children: [
          HomeItem(
            image: ImageConstant.customersPrimary,
            name: 'Customers',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.productsPrimary,
            name: 'Products',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.newOrderPrimary,
            name: 'New Order',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.returnOrderPrimary,
            name: 'Return Order',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.addPaymentPrimary,
            name: 'Add Payment',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.todaysOrderPrimary,
            name: 'Today\'s Order',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.todaysSummaryPrimary,
            name: 'Today\'s Summary',
            onPressed: () {},
          ),
          HomeItem(
            image: ImageConstant.routePrimary,
            name: 'Route',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
