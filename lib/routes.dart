import 'package:cafe_app/core/constant/routes.dart';
import 'package:cafe_app/core/middleware/middleware.dart';
import 'package:cafe_app/view/screen/auth/forgetpassword.dart';
import 'package:cafe_app/view/screen/auth/login.dart';
import 'package:cafe_app/view/screen/auth/resstpassword.dart';
import 'package:cafe_app/view/screen/auth/signup.dart';
import 'package:cafe_app/view/screen/auth/successpage.dart';
import 'package:cafe_app/view/screen/auth/verfiycode.dart';
import 'package:cafe_app/view/screen/homepage.dart';
import 'package:cafe_app/view/screen/lang.dart';
import 'package:cafe_app/view/screen/navbarscreen.dart';
import 'package:cafe_app/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/functions/bottomnavbinding.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Lang(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const Signup()),
  GetPage(
    name: AppRoute.frogetpassword,
    page: () => const Forgetpassword(),
  ),
  GetPage(
    name: AppRoute.resetpassword,
    page: () => const Resetpassword(),
  ),
  GetPage(
    name: AppRoute.verfiycode,
    page: () => const Verfiycode(),
  ),
  GetPage(
    name: AppRoute.successpage,
    page: () => const Successpage(),
  ),
  GetPage(
    name: AppRoute.onboadring,
    page: () => const OnBoarding(),
  ),
  GetPage(
      name: AppRoute.bottomNavigationBar,
      page: () => const Navr(),
      binding: BottomNavigationBinding()),
  GetPage(
    name: AppRoute.homepage,
    page: () => const Home(),
  )
];
