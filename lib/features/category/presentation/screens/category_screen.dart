import 'package:flutter/material.dart';
import 'package:spacex_app/core/theming/colors.dart';
import 'package:spacex_app/core/theming/style.dart';
import 'package:spacex_app/core/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/features/category/presentation/widgets/category_app_bar.dart';
import 'package:spacex_app/features/category/presentation/widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.h), child: CategoryAppBar()),
        body: Container(
          height: height,
          width: width,
          margin: EdgeInsets.fromLTRB(20.h, 60.h, 20.h, 0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.80.h,
              crossAxisSpacing: 20.h,
              mainAxisSpacing: 20.h,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return CategoryCard(
                index: index,
              );
            },
          ),
        ));
  }
}
