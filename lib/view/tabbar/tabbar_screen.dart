import 'package:flutter/material.dart';
import 'package:lexicon/view/groups_screen/groups_list/groups_list_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.deepPurple.shade100,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.list),
            label: "Группы",
          ),
          NavigationDestination(
            icon: Icon(Icons.abc),
            label: "Слова",
          ),
          NavigationDestination(
            icon: Icon(Icons.link),
            label: "Ссылка",
          ),
        ],
      ),
      body: const [
        GroupsListScreen(),
        Text("Пусто"),
        Text("Пусто"),
      ][currentPageIndex],
    );
  }
}
