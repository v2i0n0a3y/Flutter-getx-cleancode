import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
 InputPasswordWidget({super.key});

    final loginVm = Get.put(LoginViewModel());


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: loginVm.passwordController.value,
        focusNode: loginVm.passwordFocusNode.value,
        obscureText: true,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'password_hint'.tr,
        ),
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(context, loginVm.emailFocusNode.value,
              loginVm.passwordFocusNode.value);
        });
  }
}
