import 'package:cafe_app/core/localization/changelocal.dart';
import 'package:cafe_app/core/localization/translation.dart';
import 'package:cafe_app/core/services/services.dart';
import 'package:cafe_app/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Myservices().initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.languagne,
      theme: controller.appTheme,
      getPages: routes,
    );
  }
}
