import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing.dart';
import 'auth/login.dart';

// testing purpose
import 'homepage.dart';
import 'aduan.dart';
import 'borang/kewps8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Appquest Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        getPages: [
          // GetPage(name: "/", page: ()=>LandingPage()),
          GetPage(name: "/", page: () => Kewps8Page())
        ]);
  }
}
