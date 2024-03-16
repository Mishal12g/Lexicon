import 'package:flutter/material.dart';

class GroupWidget extends StatelessWidget {
  final Function onTap;
  final String text;

  const GroupWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
          decoration: BoxDecoration(
              color: Colors.deepPurple.shade100,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          )),
      onTap: () => onTap(),
    );
  }
}
