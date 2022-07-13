import 'package:cafe_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class ResetPasswrodController extends GetxController {
  resetpass();
  goToLogin();
}

class ResetPasswrodControllerimp extends ResetPasswrodController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;
  @override
  goToLogin() {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.login);
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  resetpass() {}
}
