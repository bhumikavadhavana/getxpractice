import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/views/detail_page.dart';
import 'package:getx_practice/views/homepage.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/detail', page: () => detailpage()),
      ],
    ),
  );
}
