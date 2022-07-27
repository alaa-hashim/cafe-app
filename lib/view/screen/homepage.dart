// ignore_for_file: unnecessary_import

import 'package:cafe_app/controller/productcontroller.dart';
import 'package:cafe_app/core/constant/color.dart';
import 'package:cafe_app/view/screen/widget/productItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shimmer/shimmer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productcontroller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBar(title: const Text("all")),
      body: ListView(physics: const ScrollPhysics(), children: [
        Obx(
          (() {
            if (productcontroller.isLoading.value) {
              return Center(
                child: Expanded(
                    child: SizedBox(
                        width: double.infinity,
                        height: 100.0,
                        child: Shimmer.fromColors(
                          baseColor: AppColor.darkgray,
                          highlightColor: AppColor.lightgray,
                          child: ListView.builder(
                            itemBuilder: (_, __) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 180,
                                      height: 48.0,
                                      color: Colors.white,
                                    ),
                                  ]),
                            ),
                          ),
                        ))),
              );
            } else {
              return GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 1.0,
                    childAspectRatio: 0.65,
                  ),
                  itemCount: productcontroller.productlist.length,
                  itemBuilder: (context, i) {
                    return Productitem(productcontroller.productlist[i]);
                  });
            }
          }),
        )
      ]),
    );
  }
}
