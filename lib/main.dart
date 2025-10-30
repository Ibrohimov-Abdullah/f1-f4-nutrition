// src - barcha papka va oynlar, dizayn turadigon joy


// start - loyihani ishga churish uchun void main birinchi ishlovchi narsalar uchun



import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nutrution_app/src/core/style/app_colors.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.black,
      ),
    );
  }
}
