// ignore_for_file: file_names, avoid_print

import 'dart:convert';

import 'package:cafe_app/core/constant/routes.dart';
import 'package:cafe_app/core/services/remoteservices.dart';
import 'package:cafe_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  var isLoading = true.obs;
  signup();
  goToLogin();
  checksignup();
  register();
  Myservices myServices = Get.find();
}

class SignUpControllerimp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController firstname;
  late TextEditingController lastname;
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
    firstname = TextEditingController();
    lastname = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    firstname.dispose();
    lastname.dispose();
    super.dispose();
  }

  @override
  checksignup() {
    //
    if (username.text.isEmpty) {
      Get.snackbar("Error", "username is required");
    }
    if (username.text.length < 3) {
      Get.snackbar("Error", "username most be more then 3");
    } else {
      Get.showOverlay(
          asyncFunction: () => register(),
          loadingWidget: const Center(
            child: CircularProgressIndicator(),
          ));
    }
  }

  @override
  register() async {
    try {
      var respone = await RemoteServices.client
          .post(Uri.parse('http://10.39.1.27/alaa/auth/signup.php'), body: {
        "username": username.text,
        "firstname": firstname.text,
        "lastname": lastname.text,
        "email": email.text,
        "password": password.text,
        "phone": phone.text,
      });
      var res = await jsonDecode(respone.body);
      if (res['success']) {
        Get.snackbar("Success", res['message'], backgroundColor: Colors.green);
        Get.offNamed(AppRoute.login);
      }
    } finally {}
  }
}
