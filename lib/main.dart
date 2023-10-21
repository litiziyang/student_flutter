import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_flutter/pages/login/controller/LoginPageController.dart';
import 'package:student_flutter/route/routes.dart';

void main() {
  runApp(const MyApp());
  Get.put(LoginPageController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1344),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Student',
          initialRoute: routes.INITIAL,
          getPages: routes.route,
        );
      },
    );
  }
}
