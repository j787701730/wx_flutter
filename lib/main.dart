import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:wx_flutter/routes.dart';

void main() {
  final router = new Router();
  Routes.configureRoutes(router);
  runApp(MaterialApp(
      title: 'wx_flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primarySwatch: Colors.blue,
          primaryColor: Color(0xff303030),
          scaffoldBackgroundColor: Color(0xFFebebeb),
          cardColor: Color(0xff393a3f),
          platform: TargetPlatform.iOS),
      onGenerateRoute: Routes.router.generator));
}
