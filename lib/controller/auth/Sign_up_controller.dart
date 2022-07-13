// ignore_for_file: file_names, avoid_print

import 'package:cafe_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToLogin();
}

class SignUpControllerimp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  @override
  // ignore: non_constant_identifier_names
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signup() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.delete<SignUpControllerimp>();
      Get.offNamed(AppRoute.verfiycode);
    } else {
      print("not vaid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
