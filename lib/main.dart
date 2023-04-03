import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:girlboy/Utilities/MyBehavior.dart';
import 'package:girlboy/View/Auth/Auth.dart';

import 'ColorUi.dart';
import 'Utilities/Constant.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    scrollBehavior: MyBehavior(),
    theme: ThemeData(
        fontFamily: 'Yekan',
        canvasColor: Colors.transparent
    ),
    home: const Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).viewPadding.top;
    var bottom = MediaQuery.of(context).viewPadding.bottom;
    print(top);
    print(bottom);
    Constant.paddingBottom = bottom;
    Constant.paddingTop = top;

    return Container(
        decoration: const BoxDecoration(
          color: ColorUi.background,
        ),
        child: const Auth()
    );
  }
}
