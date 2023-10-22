import 'package:get/get.dart';
import 'package:student_flutter/pages/login/controller/LoginPageController.dart';
import 'package:flutter/material.dart';
import 'package:fsuper/fsuper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends GetView<LoginPageController> {
  const LoginPage({super.key});

  Widget _loginCodeView() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: const Text("+86"),
              ),
              SizedBox(
                width: ScreenUtil().screenWidth - 220,
                child: const TextField(
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      hintText: '请输入手机号'),
                ),
              ),
              FSuper(
                width: 100,
                height: 50,
                style: const TextStyle(fontSize: 17),
                textAlignment: Alignment.center,
                backgroundColor: const Color.fromARGB(252, 240, 191, 1),
                text: '获取验证码',
                corner: FCorner.all(5),
                onClick: () {},
              )
            ],
          ),
          const SizedBox(
            child: Divider(
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            child: Text(
              '未注册的手机号验证后自动创建学生录账号',
              style: TextStyle(fontSize: 10, color: Colors.green),
            ),
          ),
          SizedBox(
            width: ScreenUtil().screenWidth - 70,
            height: 70,
            child: const TextField(
              maxLength: 5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  hintText: '请输入验证码'),
            ),
          ),
          const SizedBox(
            child: Divider(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginPasswordView() {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: const Text("+86"),
              ),
              SizedBox(
                width: ScreenUtil().screenWidth - 120,
                child: const TextField(
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      hintText: '请输入手机号'),
                ),
              )
            ],
          ),
          const SizedBox(
            child: Divider(
              color: Colors.black87,
            ),
          ),
          SizedBox(
            width: ScreenUtil().screenWidth - 70,
            height: 70,
            child: TextField(
              maxLength: 12,
              obscureText: controller.isvisible.value,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  hintText: '请输入密码',
                  suffix: IconButton(
                    icon: Icon(
                      controller.isvisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 18,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      controller.changeIsvisble();
                    },
                  )),
            ),
          ),
          const SizedBox(
            child: Divider(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          FSuper(
            text: '帮助',
            style: const TextStyle(color: Colors.black, fontSize: 16),
            padding: const EdgeInsets.only(right: 20, top: 20),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(25, 50, 20, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '欢迎',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Builder(builder: (context) {
                  return Obx(() => controller.isCodeLogin.value
                      ? _loginCodeView()
                      : _loginPasswordView());
                }),
                const SizedBox(
                  height: 20,
                ),
                Obx(() => FSuper(
                      width: ScreenUtil().screenWidth - 60,
                      height: 50,
                      text: '登录',
                      style: const TextStyle(fontSize: 17),
                      textAlignment: Alignment.center,
                      backgroundColor: const Color.fromARGB(252, 240, 191, 1),
                      corner: FCorner.all(5),
                      onClick: () {},
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => FSuper(
                        text: controller.isCodeLogin.value ? "密码登录" : "验证码登录",
                        onClick: () {
                          controller.changeIsCodeLogin();
                        },
                      ),
                    ),
                    FSuper(
                      text: '遇到问题',
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(80),
                      height: ScreenUtil().setHeight(80),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 25,
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.gite,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(80),
                      height: ScreenUtil().setHeight(80),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 25,
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.wechat,
                              color: Colors.white,
                            )),
                      ),
                    )
                    // CircleAvatar(
                    //   backgroundColor: Colors.white,
                    //   radius: 25,
                    //   child: IconButton(
                    //       onPressed: null,
                    //       icon: Icon(
                    //         Icons.tag_faces,
                    //         color: Colors.white,
                    //       )),
                    // )
                  ],
                ),
                FSuper(
                  margin: const EdgeInsets.only(top: 40, left: 100),
                  text: '登录代表同意',
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                  spans: const [
                    TextSpan(
                      text: '私密协议',
                      style: TextStyle(color: Colors.yellow, fontSize: 11),
                    ),
                    TextSpan(
                      text: '授权',
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
