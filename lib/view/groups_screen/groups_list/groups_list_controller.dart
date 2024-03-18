import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lexicon/models/group.dart';
import 'package:lexicon/models/word.dart';

final class GroupsListController extends GetxController {
  final List<Group> _groups = [
    Group(
      name: "Существительные",
      words: [Word(word: "Ящик", translate: "Box")],
    ),
    Group(
      name: "Прилагательные",
      words: [
        Word(
          word: "Красивый",
          translate: "red",
        ),
        Word(
          word: "добрый",
          translate: "kind",
        ),
        Word(
          word: "Милый",
          translate: "Cute",
        ),
      ],
    ),
    Group(
      name: "Спорт",
      words: [
        Word(
          word: "бег",
          translate: "run",
        ),
      ],
    ),
    Group(
      name: "Учеба",
      words: [
        Word(
          word: "домашка",
          translate: "homework",
        ),
      ],
    ),
  ];

  List<Group> get groups => _groups;
}
