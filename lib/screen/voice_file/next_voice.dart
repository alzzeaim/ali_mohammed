import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/Recently_added_Voices.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/voice_page.dart';

import '../../widget/app_bar_actions.dart';
import '../../widget/app_bar_title.dart';
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
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(
          titel: MyText.title25,
        ),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VoicePage(),
              ),
            );
          })
        ],
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return ItemOfVoice();
        },
      ),
    );
  }
}
