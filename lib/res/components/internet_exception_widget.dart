import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/res/colors/colors.dart';

class InterNetExceptionWidget extends StatefulWidget {
  final VoidCallback onPressed;
  const InterNetExceptionWidget({super.key, required this.onPressed});

  @override
  State<InterNetExceptionWidget> createState() =>
      _InterNetExceptionWidgetState();
}

class _InterNetExceptionWidgetState extends State<InterNetExceptionWidget> {
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
          Text("Refresh")
        ],
      ),
    );
  }
}
