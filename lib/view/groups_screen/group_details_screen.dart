import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lexicon/view/components/word_details.dart';
import 'package:lexicon/view/groups_screen/groups_list/groups_list_controller.dart';

class GroupDetailtsScreen extends StatelessWidget {
  const GroupDetailtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GroupsListController groupsListC = Get.find();
    final index = Get.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text(groupsListC.groups[index].name),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 10,
            right: 10,
            bottom: 5,
          ),
          child: ListView.builder(
            itemCount: groupsListC.groups[index].words.length,
            itemBuilder: (context, int i) {
              final word = groupsListC.groups[index].words[i];
              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: WordDetailsWidget(
                  word: word.word,
                  wordTranslate: word.translate,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
