import 'package:flutter/material.dart';
import 'package:spacex_app/core/routing/routes.dart';
import 'package:spacex_app/core/theming/colors.dart';
import 'package:spacex_app/core/theming/style.dart';
import 'package:spacex_app/core/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/features/category/data/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.index});
  final int index;
  List<CategoryModel> categoryList = [
    CategoryModel(iconPath: AppAssets.rocketIcon, title: 'Rockets'),
    CategoryModel(iconPath: AppAssets.capsulesIcon, title: 'Capsules'),
    CategoryModel(iconPath: AppAssets.satelliteIcon, title: 'Launches'),
    CategoryModel(iconPath: AppAssets.userAstronautIcon, title: 'Crew'),
    CategoryModel(iconPath: AppAssets.hubIcon, title: 'Cores'),
    CategoryModel(iconPath: AppAssets.shuttleSpaceIcon, title: 'Spacecraft'),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.listScreen, arguments: categoryList[index].title);
      },
      child: Container(
        height: 139.h,
        width: 139.w,
        decoration: BoxDecoration(
          // color: AppColors.secondary,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(categoryList[index].iconPath,
                width: 75.w, height: 75.h),
            const SizedBox(height: 10),
            Text(
              categoryList[index].title,
              style: TextStyles.f14W500Black,
            ),
          ],
        ),
      ),
    );
  }
}
