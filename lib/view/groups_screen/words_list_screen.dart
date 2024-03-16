import 'package:flutter/material.dart';
import 'package:lexicon/services/group_model.dart';
import 'package:lexicon/view/components/word_details.dart';

class GroupDetailtsScreen extends StatelessWidget {
  const GroupDetailtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = GroupModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Group name"),
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
              itemCount: model.groups.length,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: WordDetailsWidget(),
                );
              },
            )),
      ),
    );
  }
}
