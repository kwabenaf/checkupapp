// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBlue,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: homeIcon, label: ''),
        BottomNavigationBarItem(icon: homeIcon, label: ''),
        BottomNavigationBarItem(icon: homeIcon, label: ''),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              // greetings row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Hi Kwabs
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Kwabs!',
                        style: h1Bold, //using custom style from const file
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '12 Sept, 2023',
                        style: TextStyle(
                          color: txtBlue,
                        ),
                      )
                    ],
                  ),

                  //notification
                  Container(
                    decoration: BoxDecoration(
                      color: liBlue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.all(16),
                    child: notiIcon,
                  )
                ],
              ),

              SizedBox(
                height: 50,
              ),

              // SearchBar
              Container(
                decoration: BoxDecoration(
                  color: liBlue,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: tdWhite,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: hintTxt,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),

              // How do you feel?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: h2Bold,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: tdWhite,
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

              // emoji buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // badly
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😒'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Bad',
                        style: p1Text,
                      ),
                    ],
                  ),

                  // fine
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '👌🏿'),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Okay',
                        style: p1Text,
                      ),
                    ],
                  ),

                  // well
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '🙂'),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Good',
                        style: p1Text,
                      ),
                    ],
                  ),

                  // excellent
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😎'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Perfecto',
                        style: p1Text,
                      ),
                    ],
                  ),
                ],
              ),

              Expanded(
                child: Container(
                  color: tdWhite,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*
class NotiButton extends StatelessWidget {
  const NotiButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: liBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: notiIcon,
    );
    
  }
}
*/