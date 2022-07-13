// ignore_for_file: file_names, avoid_print

import 'package:cafe_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goTofrogetpassword();
}

class LoginControllerimp extends LoginController {
  late GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
    } else {
      print("not vaid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goTofrogetpassword() {
    Get.offNamed(AppRoute.frogetpassword);
  }
}
