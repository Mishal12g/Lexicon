import 'package:flutter/material.dart';
import 'package:lexicon/services/group_model.dart';
import 'package:lexicon/view/components/word_details.dart';

class GroupDetailtsScreen extends StatelessWidget {
  const GroupDetailtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = GroupModel();

    final int index = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text(model.groups[index].name),
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
              itemCount: model.groups[index].words.length,
              itemBuilder: (context, int i) {
                final word = model.groups[index].words[i];
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: WordDetailsWidget(word: word),
                );
              },
            )),
      ),
    );
  }
}
