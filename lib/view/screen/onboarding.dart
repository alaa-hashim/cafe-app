import 'package:cafe_app/controller/onboardingcontroller.dart';
import 'package:cafe_app/view/screen/widget/auth/dotcontriller.dart';
import 'package:cafe_app/view/screen/widget/custmslider.dart';
import 'package:cafe_app/view/screen/widget/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Onboatdingcontrollerimp());
    return Scaffold(
        backgroundColor: AppColor.bg,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
