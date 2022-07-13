import 'package:cafe_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custextfrom extends StatelessWidget {
  final String hinttext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) validator;
  final bool isnumber;
  const Custextfrom(
      {Key? key,
      required this.hinttext,
      required this.iconData,
      required this.mycontroller,
      required this.validator,
      required this.isnumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        keyboardType: isnumber ? TextInputType.phone : TextInputType.text,
        validator: validator,
        controller: mycontroller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            ),
            hintText: hinttext,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.darkgray),
            prefixIcon: Icon(iconData)),
      ),
    );
  }
}
