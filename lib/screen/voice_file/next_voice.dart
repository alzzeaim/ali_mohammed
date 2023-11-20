import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/Recently_added_Voices.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/voice_page.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/top_search_widget.dart';

import '../../widget/item_of_voice.dart';

class NextVoice extends StatefulWidget {
  const NextVoice({super.key});

  @override
  State<NextVoice> createState() => _NextVoiceState();
}

class _NextVoiceState extends State<NextVoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
          Title: MyText.title25,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VoicePage(),
              ),
            );
          }),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: AppPadding.p10),
            child: TopSearchWidget(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return ItemOfVoice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
