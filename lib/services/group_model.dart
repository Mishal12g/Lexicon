import 'package:lexicon/models/group.dart';

final class GroupModel {
  final List<Group> groups = [
    Group(
      name: "Существительные",
      words: ["Ящик"],
    ),
    Group(
      name: "Прилагательные",
      words: ["Красивый", "добрый", "Милый"],
    ),
    Group(
      name: "Спорт",
      words: ["run", "бег"],
    ),
    Group(
      name: "Учеба",
      words: ["уроки", "домашка"],
    ),
  ];
}
