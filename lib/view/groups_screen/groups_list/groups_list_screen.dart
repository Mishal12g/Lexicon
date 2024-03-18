import 'package:flutter/material.dart';
import 'package:lexicon/view/components/group_widget.dart';
import 'package:get/get.dart';
import 'package:lexicon/view/groups_screen/groups_list/groups_list_controller.dart';

class GroupsListScreen extends StatelessWidget {
  const GroupsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GroupsListController c = Get.put(GroupsListController());

    return ListView.builder(
      itemCount: c.groups.length,
      itemBuilder: (context, index) {
        final text = c.groups[index].name;
        return GroupWidget(
          text: text,
          onTap: () {
            Get.toNamed('/GroupDetailtsScreen', arguments: index);
          },
        );
      },
    );
  }
}
