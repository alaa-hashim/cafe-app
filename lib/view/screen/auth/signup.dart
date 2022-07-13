import 'package:cafe_app/controller/auth/Sign_up_controller.dart';
import 'package:cafe_app/core/constant/color.dart';
import 'package:cafe_app/core/functions/appexit.dart';
import 'package:cafe_app/core/functions/validater.dart';
import 'package:cafe_app/view/screen/widget/auth/custexfrom.dart';
import 'package:cafe_app/view/screen/widget/auth/signup&login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerimp controller = Get.put(SignUpControllerimp());
    return Scaffold(
      body: WillPopScope(
        onWillPop: appExit,
        child: Container(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Create your Account",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Custextfrom(
                    hinttext: 'Username',
                    iconData: Icons.person,
                    mycontroller: controller.username,
                    validator: (val) {
                      return inputvalidater(val!, 3, 100, "username");
                    },
                    isnumber: false,
                  ),
                  Custextfrom(
                    hinttext: 'Email',
                    iconData: Icons.email,
                    mycontroller: controller.email,
                    validator: (val) {
                      return inputvalidater(val!, 5, 100, "email");
                    },
                    isnumber: false,
                  ),
                  Custextfrom(
                    hinttext: 'Enter your phone',
                    iconData: Icons.call,
                    mycontroller: controller.phone,
                    validator: (val) {
                      return inputvalidater(val!, 5, 15, "phone");
                    },
                    isnumber: true,
                  ),
                  Custextfrom(
                    hinttext: 'Password',
                    iconData: Icons.lock_clock_outlined,
                    mycontroller: controller.password,
                    validator: (val) {
                      return inputvalidater(val!, 6, 100, "password");
                    },
                    isnumber: false,
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
                          controller.signup();
                        },
                        textColor: AppColor.white,
                        child: const Text("Register"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SignupButton(
                      onTap: () {
                        controller.goToLogin();
                      },
                      textone: 'Already have account  ',
                      texttwo: 'Login',
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: AppColor.lightgray,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Coutnue with Accounts ",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: AppColor.lightred,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 150,
                          height: 55,
                          child: MaterialButton(
                            onPressed: () {},
                            textColor: AppColor.red,
                            child: const Text("GOOGLE"),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: AppColor.lightblue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 150,
                          height: 55,
                          child: MaterialButton(
                            onPressed: () {},
                            textColor: AppColor.blue,
                            child: const Text("FACEBOOK"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
