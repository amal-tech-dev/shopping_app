import 'package:flutter/material.dart';
import 'package:shopping_app/utils/color_constant.dart';
import 'package:shopping_app/utils/image_constant.dart';

class EmptyScreen extends StatelessWidget {
  EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.tertiary,
      child: Center(
        child: Image.asset(
          ImageConstant.logo,
          height: 200,
        ),
      ),
    );
  }
}
