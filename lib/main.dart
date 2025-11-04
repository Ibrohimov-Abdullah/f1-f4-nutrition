// src - barcha papka va oynlar, dizayn turadigon joy
// start - loyihani ishga tushirish uchun void main birinchi ishlovchi narsalar uchun

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nutrution_app/src/features/splash/view/pages/Muhammadadmin.dart';

void main() async {
  // ilova dizayni chiziliydan oldin biror bir amal qilinishi kerak bo'lsa shu yoziladi
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // telefon razmeri
      minTextAdapt: true, // text moslashuvchanligi
      splitScreenMode: true, // ikkita ilova bir vaqtda ishlashi uchun
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Yagonaoynam(),
        );
      },
    );
  }
}
