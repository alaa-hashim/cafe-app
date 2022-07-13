import 'package:cafe_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassword extends GetxController {
  checkemial();
  goTverfiy();
}

class ForgetPasswordimp extends ForgetPassword {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  goTverfiy() {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.verfiycode);
    }
  }

  @override
  checkemial() {}

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  // ignore: must_call_super
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
