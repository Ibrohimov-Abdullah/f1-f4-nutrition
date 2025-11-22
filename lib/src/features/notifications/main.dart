import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nutrution_app/src/features/notifications/view/pages/ilova.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Reviews",
          theme: ThemeData(
            fontFamily: "SF Pro Display",
            scaffoldBackgroundColor: Colors.white,
          ),
          home: child,
        );
      },
      child: ReviewsPage(),
    );
  }
}
