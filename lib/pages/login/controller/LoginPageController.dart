import 'package:get/get.dart';

class LoginPageController extends GetxController {
  final isCodeLogin = false.obs;
  final isvisible = false.obs;

  void changeIsvisble() {
    isvisible.value = !isvisible.value;
  }

  void changeIsCodeLogin() {
    isCodeLogin.value = !isCodeLogin.value;
  }
}
