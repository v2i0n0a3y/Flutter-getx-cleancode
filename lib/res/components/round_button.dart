import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getxcleancode/res/colors/colors.dart';

class RoundButtion extends StatelessWidget {
  const RoundButtion(
      {super.key,
      this.buttonColor = AppColors.blackColor,
      this.textColor = AppColors.red,
      required this.title,
      required this.onPressed,
      this.height = 50,
      this.width = 60,
      this.loading = false});

  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPressed;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all()
        ),
        child: loading?Center(child: CircularProgressIndicator()):Center(child: Text(title),),
      ),
    );
  }
}
