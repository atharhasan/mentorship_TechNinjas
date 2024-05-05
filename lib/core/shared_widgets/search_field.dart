import 'package:flutter/material.dart';
import 'package:spacex_app/core/theming/colors.dart';
import 'package:spacex_app/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.controller, required this.hintText, this.suffixIcon});
  final TextEditingController controller;
  final String hintText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.f12W400Grey,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: BorderSide(color: AppColors.darkGray, width: 2.w),
        ),
      ),
    );
  }
}
