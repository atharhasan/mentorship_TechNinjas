import 'package:flutter/material.dart';
import 'package:spacex_app/core/shared_widgets/search_field.dart';
import 'package:spacex_app/core/theming/colors.dart';
import 'package:spacex_app/core/theming/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryAppBar extends StatelessWidget {
   CategoryAppBar({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          height: 80.h,
          width: width,
          child: SearchField(
            controller: controller,
            hintText: 'Search',
            suffixIcon:Icon(Icons.search, color: AppColors.darkGray),
          ),
        ),
      ),
    );
  }
}
