import 'package:cafe_app/controller/auth/forgetpassword/resetpassword_controller.dart';
import 'package:cafe_app/core/constant/color.dart';
import 'package:cafe_app/core/functions/validater.dart';
import 'package:cafe_app/view/screen/widget/auth/custexfrom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswrodControllerimp controller =
        Get.put(ResetPasswrodControllerimp());
    return Scaffold(
      backgroundColor: AppColor.lightgray,
      body: Form(
        key: controller.goToLogin(),
        child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                const SizedBox(
                  height: 140,
                ),
                Container(
                  height: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Reset your passwrod",
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Custextfrom(
                          hinttext: 'Password',
                          iconData: Icons.lock_clock_rounded,
                          mycontroller: controller.password,
                          validator: (val) {
                            return inputvalidater(val!, 6, 100, "password");
                          },
                          isnumber: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Custextfrom(
                          hinttext: 'rePassword',
                          iconData: Icons.lock_clock_outlined,
                          mycontroller: controller.repassword,
                          validator: (val) {
                            return inputvalidater(val!, 6, 100, "repassword");
                          },
                          isnumber: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 260,
                          height: 55,
                          child: MaterialButton(
                            onPressed: () {
                              controller.goToLogin();
                            },
                            textColor: AppColor.white,
                            child: const Text("Register"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
