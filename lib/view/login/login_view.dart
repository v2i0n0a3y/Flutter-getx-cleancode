import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcleancode/res/components/round_button.dart';
import 'package:getxcleancode/utils/utils.dart';
import 'package:getxcleancode/view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVm = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

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
                TextFormField(
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
                      Utils.fieldFocusChange(
                          context,
                          loginVm.emailFocusNode.value,
                          loginVm.passwordFocusNode.value);
                    }),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: loginVm.passwordController.value,
                    focusNode: loginVm.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password_hint'.tr,
                    ),
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginVm.emailFocusNode.value,
                          loginVm.passwordFocusNode.value);
                    }),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => RoundButtion(
                      title: "Login",
                      loading: loginVm.loading.value,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          loginVm.loginApi();
                        }
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
