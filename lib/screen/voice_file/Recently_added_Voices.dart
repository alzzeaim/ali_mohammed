// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/next_voice.dart';

import '../../widget/type_of_itme/itme_type1_new.dart';

class RecentlyAddedVoices extends StatelessWidget {
  const RecentlyAddedVoices({Key? key, required this.isNew}) : super(key: key);
  final bool isNew;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Column(
          children: [
            ItmeType1New(
                isNew: isNew,
                nextPage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => NextVoice(),
                    ),
                  );
                },
                iconsItme: Icons.mic_none_rounded,
                numItme: 20,
                URL2: imageMeneger.image2,
                decItme: MyText.title28),
          ],
        ),
      ),
    );
  }
}
