import 'package:flutter/material.dart';
import 'package:lexicon/services/group_model.dart';
import 'package:lexicon/view/components/group_widget.dart';

class GroupsListScreen extends StatelessWidget {
  const GroupsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = GroupModel();

    return ListView.builder(
      itemCount: model.groups.length,
      itemBuilder: (context, index) {
        final text = model.groups[index].name;
        return GroupWidget(
          text: text,
          onTap: () {
            Navigator.of(context).pushNamed('/GroupDetailtsScreen');
          },
        );
      },
    );
  }
}
