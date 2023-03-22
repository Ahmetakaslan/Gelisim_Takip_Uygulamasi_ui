import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  String emoji;
  String durum;
  Emoji(this.emoji, this.durum);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: () {},
            child: Text(
              widget.emoji,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(height: 8,),
        Text(
          widget.durum,
          style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
