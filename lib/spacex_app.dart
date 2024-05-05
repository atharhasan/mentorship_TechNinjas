import 'package:flutter/material.dart';
import 'package:spacex_app/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spacex_app/core/routing/routes.dart';

class SpaceXApp extends StatelessWidget {
  const SpaceXApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: "Salam Ride",
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.categoryScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}