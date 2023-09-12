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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: notiIcon,
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // SearchBar
              Container(
                decoration: BoxDecoration(
                  color: liBlue,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: tdWhite,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: tdWhite,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
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

              // face buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // badly
                  Column(
                    children: [
                      EmoticonFace(emoticonFace: '😒'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Badly',
                        style: p1Text,
                      ),
                    ],
                  ),
                  // fine
                  EmoticonFace(emoticonFace: '👌🏿'),
                  // well
                  EmoticonFace(emoticonFace: '🙂'),
                  // excellent
                  EmoticonFace(emoticonFace: '😎'),
                ],
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