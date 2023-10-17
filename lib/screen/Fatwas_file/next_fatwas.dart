import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Fatwas_file/Fatwas_page.dart';

import '../../widget/app_bar_actions.dart';


class NextFatwas extends StatefulWidget {
  const NextFatwas({super.key});

  @override
  State<NextFatwas> createState() => _NextFatwasState();
}

class _NextFatwasState extends State<NextFatwas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(),
          ],
        ),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FatwasPage(),
              ),
            );
          })
        ],
        title: Image(
          image: AssetImage(imageMeneger.image1),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: MyColors.MyAction,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  MyText.title11,
                  textAlign: TextAlign.right,
                  style: MyTextStyle.style7,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        MyText.title12,
                        style: MyTextStyle.style8
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                       MyText.title13,
                        style: MyTextStyle.style9
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        MyText.title14,
                        style:MyTextStyle.style10
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      /////////
                      Text(
                        MyText.title11,
                        style: MyTextStyle.style11,
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        MyText.title15,
                        style:MyTextStyle.style10,
                        ),
                      
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        MyText.title16,
                        style: MyTextStyle.style12,
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
