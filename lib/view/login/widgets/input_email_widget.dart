import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});

  final loginVm = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: loginVm.emailController.value,
        focusNode: loginVm.emailFocusNode.value,
        validator: (value) {
          if (value!.isEmpty) {
            Utils.snackBar("Email", "Enter Email");
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'email_hint'.tr,
        ),
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(context, loginVm.emailFocusNode.value,
              loginVm.passwordFocusNode.value);
        });
  }
}
