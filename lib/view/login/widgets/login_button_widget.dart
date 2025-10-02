import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/components/round_button.dart';
import '../../../view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
  LoginButtonWidget({super.key, required this.formKey});

  final loginVm = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RoundButtion(
          title: "Login",
          loading: loginVm.loading.value,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              loginVm.loginApi();
            }
          }),
    );
  }
}
