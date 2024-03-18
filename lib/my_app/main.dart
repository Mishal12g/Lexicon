import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lexicon/view/groups_screen/group_details_screen.dart';
import 'package:lexicon/view/tabbar/tabbar_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TabBarScreen(),
        '/GroupDetailtsScreen': (context) => const GroupDetailtsScreen(),
      },
    );
  }
}
