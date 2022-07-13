import 'package:cafe_app/core/constant/color.dart';
import 'package:cafe_app/core/functions/validater.dart';
import 'package:cafe_app/view/screen/widget/auth/custexfrom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forgetpassword/forgetpassword_controller.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordimp controller = Get.put(ForgetPasswordimp());
    return Scaffold(
      body: Form(
        key: controller.goTverfiy(),
        child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Froget password",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Custextfrom(
                    hinttext: 'Email',
                    iconData: Icons.email,
                    mycontroller: controller.email,
                    validator: (val) {
                      return inputvalidater(val!, 5, 100, "email");
                    },
                    isnumber: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 230,
                    height: 55,
                    child: MaterialButton(
                      onPressed: () {
                        controller.goTverfiy();
                      },
                      textColor: AppColor.white,
                      child: const Text("Next"),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
