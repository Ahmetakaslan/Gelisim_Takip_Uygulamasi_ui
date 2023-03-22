import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:saglik_app_22_03_2023/pages/emojiSayfa.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  void RenkDonustur(Color color) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,

        
        items:  [
       
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '',activeIcon:Icon(Icons.home) ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  AppBarAltKismi(),
                  MyTextField(),
                  ThirdLine(),
                  EmojiLine(),
                ],
              ),
            ),
            BottomContainer(),
          ],
        ),
      ),
    );
  }

  Expanded BottomContainer() {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyDefaultText(
                          text: "Egzersiz", size: 22, color: Colors.black),
                      MyDefaultIcon(fun: () {}, icon: Icon(Icons.more_horiz)),
                    ],
                  ),
                  ContentOfContainer(
                    backroundColor: Color.fromARGB(255, 239, 108, 0),
                    icon: Icon(Icons.favorite),
                    size: 16,
                    text: "Konuşma Becerileri",
                    subText: "16 egzersiz",
                    IconColor: Colors.white,
                  ),
                  ContentOfContainer(
                      icon: Icon(Icons.person),
                      IconColor: Colors.white,
                      backroundColor: Colors.blue,
                      size: 16,
                      text: "Okuma Hızı",
                       subText: "8 egzersiz"),
                        ContentOfContainer(
                      icon: Icon(Icons.star),
                      IconColor: Colors.white,
                      backroundColor: Colors.green,
                      size: 16,
                      text: "Yazma Becerileri",
                       subText: "5 egzersiz"),
                         ContentOfContainer(
                      icon: Icon(Icons.headphones),
                      IconColor: Colors.white,
                      backroundColor: Colors.red,
                      size: 16,
                      text: "Dinleme Becerisi",
                       subText: "11 egzersiz"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding ContentOfContainer(
      {required Color backroundColor,
      required Icon icon,
      Color IconColor = Colors.white,
      required String text,
      required double size,
      String subText = ""}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: backroundColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: MyDefaultIcon(
                          fun: () {
                            setState(
                              () {
                                /// burada renk değişim yap
                              },
                            );
                          },
                          icon: icon,
                          color: IconColor),
                    ),
                  ),
                  Column(
                    children: [
                      MyDefaultText(text: text, size: size),
                      SizedBox(
                        height: 5,
                      ),
                      MyDefaultText(text: subText),
                    ],
                  ),
                ],
              ),
              MyDefaultIcon(fun: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
      ),
    );
  }

  Padding EmojiLine() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Emoji("😔", "Kötü"),
          Emoji("😐", "Orta"),
          Emoji("😊", "Güzel"),
          Emoji("😀", "Harika"),
        ],
      ),
    );
  }

  Row ThirdLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyDefaultText(
          text: "Bugün Nasılsın",
          size: 25,
          color: Colors.white,
        ),
        MyDefaultIcon(
            fun: () {}, icon: Icon(Icons.more_horiz), color: Colors.white)
      ],
    );
  }

  IconButton MyDefaultIcon(
      {required Function fun, required Icon icon, Color? color}) {
    return IconButton(
      onPressed: () {
        fun;
      },
      icon: icon,
      color: color,
    );
  }

  Text MyDefaultText({required String text, double? size, Color? color}) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.bold),
    );
  }

  Padding MyTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.white),
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Ara",
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row AppBarAltKismi() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDefaultText(text: "Merhaba Ahmet", color: Colors.white, size: 25),
            MyDefaultText(text: "22 Mart 2023", color: Colors.blue[200])
          ],
        ),
        Container(
          color: Colors.blue[600],
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
