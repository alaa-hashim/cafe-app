// ignore_for_file: file_names, avoid_print

import 'dart:convert';

import 'package:cafe_app/core/constant/routes.dart';
import 'package:cafe_app/core/services/services.dart';
import 'package:cafe_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/services/remoteservices.dart';

abstract class LoginController extends GetxController {
  var isLoading = true.obs;
  login();
  goToSignUp();
  goTofrogetpassword();
  goTbottomBar();
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
    checkuser();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  checkuser() async {
    var user = Myservices().getuser();
    if (user != null) {
      Get.offNamed(AppRoute.login);
    }
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

  @override
  goTbottomBar() {
    Get.offNamed(AppRoute.bottomNavigationBar);
  }

  logina() async {
    try {
      var respone = await RemoteServices.client
          .post(Uri.parse('http://10.39.1.27/alaa/auth/login.php'), body: {
        "email": email.text,
        "password": password.text,
      });
      var res = await jsonDecode(respone.body);
      if (res['success']) {
        Get.snackbar("Success", res['message'], backgroundColor: Colors.green);
        User user = User.fromJson(res['user']);
        await Myservices().storeUser(jsonEncode(user));
        Get.offNamed(AppRoute.bottomNavigationBar);
      } else {
        Get.snackbar("Error", res['message'], backgroundColor: Colors.red);
      }
    } finally {}
  }
}
