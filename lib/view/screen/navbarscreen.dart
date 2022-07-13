// ignore_for_file: unused_import, depend_on_referenced_packages, library_private_types_in_public_api

import 'package:animations/animations.dart';
import 'package:cafe_app/controller/botttombarcontroller.dart';
import 'package:cafe_app/view/screen/cart.dart';
import 'package:cafe_app/view/screen/categroy.dart';
import 'package:cafe_app/view/screen/explore.dart';
import 'package:cafe_app/view/screen/homepage.dart';
import 'package:cafe_app/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/color.dart';

class Navr extends StatefulWidget {
  const Navr({Key? key}) : super(key: key);

  @override
  _NavrState createState() => _NavrState();
}

class _NavrState extends State<Navr> {
  int pageindex = 0;
  List<Widget> pagelist = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarContorller>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(index: controller.tabIndex, children: const [
            Home(),
            Explore(),
            Categroy(),
            Cart(),
            Profile(),
          ]),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: controller.tabIndex,
            selectedIconTheme:
                const IconThemeData(color: AppColor.primaryColor),
            selectedItemColor: AppColor.primaryColor,
            selectedFontSize: 15,
            unselectedItemColor: const Color(0xffA7B99E),
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            onTap: (value) {
              controller.changeTabindex;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'Categories',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                  backgroundColor: Colors.red),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'My account',
              ),
            ],
          ),
        );
      },
    );
  }
}
