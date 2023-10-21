import 'package:get/get.dart';
import 'package:student_flutter/pages/login/controller/LoginPageController.dart';

class login_bing extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginPageController());
  }
}
