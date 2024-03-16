import 'package:flutter/material.dart';

class WordDetailsWidget extends StatelessWidget {
  final String word;

  const WordDetailsWidget({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 25,
      color: Colors.white,
    );
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  word,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle,
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Text(
                  word,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle,
                ),
              ],
            ),
            Positioned(
                right: 0,
                top: 0,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)))
          ],
        ),
      ),
    );
  }
}
