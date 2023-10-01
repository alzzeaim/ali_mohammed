import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/voices.dart';

import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

import '../homePage.dart';
import 'Recently_added_Voices.dart';

class VoicePage extends StatefulWidget {
  const VoicePage({super.key});

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(titel: "الصوتيات"),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          })
        ],
      ),
      // body: SafeArea(child: Text("voicePage")),
      body: TabBarPage(
        tap11: "المضاف مؤاخراً",
        tap22: "الصوتيات",
        page1: RecentlyAddedVoices(),
        page2: Voices(),
      ),
    );
  }
}
