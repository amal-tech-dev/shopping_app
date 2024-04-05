import 'package:flutter/material.dart';
import 'package:shopping_app/utils/color_constant.dart';

class HomeItem extends StatelessWidget {
  String image, name;
  VoidCallback onPressed;
  HomeItem({
    super.key,
    required this.image,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstant.tertiary,
      surfaceTintColor: Colors.transparent,
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 40,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: TextStyle(
              color: ColorConstant.secondary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
