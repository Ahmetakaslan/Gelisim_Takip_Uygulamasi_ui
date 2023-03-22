import 'package:flutter/material.dart';

class DefaultSayfa extends StatefulWidget {
  const DefaultSayfa({super.key});
  @override
  State<DefaultSayfa> createState() => _DefaultSayfaState();


}

class _DefaultSayfaState extends State<DefaultSayfa> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Text MyDefaultText({required String text, double? size, Color? color}) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
