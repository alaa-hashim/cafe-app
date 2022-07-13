import 'package:cafe_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyController extends GetxController {
  checkCode();
  goToreset();
}

class VerifyControllerimp extends VerifyController {
  @override
  checkCode() {}

  @override
  goToreset() {
    Get.toNamed(AppRoute.resetpassword);
  }
}
