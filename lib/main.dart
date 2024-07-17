import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/routes/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    );
  }
}
