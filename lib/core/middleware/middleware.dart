// ignore_for_file: unrelated_type_equality_checks

import 'package:cafe_app/core/constant/routes.dart';
import 'package:cafe_app/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  Myservices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedpreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
