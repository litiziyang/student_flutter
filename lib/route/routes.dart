import 'package:get/get.dart';
import 'package:student_flutter/pages/login/login_bing/login_bing.dart';
import 'package:student_flutter/pages/login/view/login.dart';

part 'page_route.dart';

// ignore: camel_case_types
class routes {
  routes._();

  // ignore: constant_identifier_names
  static const INITIAL = page_routes.Login;

  static final route = [
    GetPage(
        name: page_routes.Login, page: () => LoginPage(), binding: login_bing())
  ];
}
