import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/res/components/round_button.dart';
import 'package:getxcleancode/view/login/widgets/input_email_widget.dart';
import 'package:getxcleancode/view/login/widgets/input_password_widget.dart';
import 'package:getxcleancode/view/login/widgets/login_button_widget.dart';

import '../../view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  final loginVm = Get.put(LoginViewModel());

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    Get.delete<LoginViewModel>();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InputEmailWidget(),
                const SizedBox(
                  height: 20,
                ),
                InputPasswordWidget(),
                const SizedBox(
                  height: 20,
                ),
                LoginButtonWidget(
                  formKey: _formKey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
