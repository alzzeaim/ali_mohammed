import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/next_video.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type1_new.dart';

import '../../../widget/Video_series.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
            child: Stack(children: [
          ItmeType1New(
              isNew: false,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextVideo(),
                  ),
                );
              },
              iconsItme: Icons.videocam_outlined,
              numItme: 20,
              URL2:imageMeneger.image5,
              decItme:
                 MyText.title24),
        ])));
  }
}
