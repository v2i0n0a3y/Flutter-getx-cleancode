import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/res/colors/colors.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const GeneralExceptionWidget({super.key, required this.onPressed});

  @override
  State<GeneralExceptionWidget> createState() =>
      _GeneralExceptionWidgetWidgetState();
}

class _GeneralExceptionWidgetWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: height * .15),
          Icon(
            Icons.cloud_off,
            color: AppColors.blackColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('internet_exception'.tr)),
          ),
          TextButton(
            onPressed: widget.onPressed,
            child: Text("Refrash"),
          )
        ],
      ),
    );
  }
}
