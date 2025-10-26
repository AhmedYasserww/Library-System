
import 'package:flutter/material.dart';
import 'package:library_system/core/utils/app_color.dart';
import 'package:library_system/core/utils/styles.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.text,
   required this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:  AppColors.buttonColor,
        ),
        child:  Center(child: Text(text,style: Styles.textStyleMedium18.copyWith(color: Colors.black),)),
      ),
    );
  }
}
