import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../widget/app_bar_actions.dart';
import 'Notifications.dart';
import 'homePage.dart';

class AbutSheikhPage extends StatefulWidget {
  const AbutSheikhPage({super.key});

  @override
  State<AbutSheikhPage> createState() => _AbutSheikhPageState();
}

class _AbutSheikhPageState extends State<AbutSheikhPage> {
  List myListTitle = [
    {
      'title':
          MyText.title31
    },
    {
      'title':
          MyText.title32
    },
    {
      'title':
          MyText.title33
    },
    {
      'title':
         MyText.title34
    },
    {
      'title':
         MyText.title35
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      appBar: AppBar(
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          })
        ],
        title: Image(
          image: AssetImage(imageMeneger.image1),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_active_outlined,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Notifcations(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(148, 133, 74, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Text(
                MyText.title36,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount: myListTitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemOfAbutSheikh(
                      dec_text: myListTitle[index]["title"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemOfAbutSheikh extends StatelessWidget {
  String dec_text;
  ItemOfAbutSheikh({
    super.key,
    required this.dec_text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(148, 133, 74, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              Icons.chevron_left_outlined,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                dec_text,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          )
        ],
      ),
    );
  }
}
