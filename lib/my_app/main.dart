import 'package:flutter/material.dart';
import 'package:lexicon/view/groups_screen/words_list_screen.dart';
import 'package:lexicon/view/tabbar/tabbar_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const TabBarScreen(),
        '/GroupDetailtsScreen': (context) => const GroupDetailtsScreen(),
      },
    );
  }
}
