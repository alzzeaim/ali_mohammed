import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/next_video.dart';

import '../../widget/type_of_itme/itme_type1_new.dart';

class RecentlyAddedVideos extends StatelessWidget {
  const RecentlyAddedVideos({Key? key, required this.isNew}) : super(key: key);
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
                      builder: (context) => NextVideo(),
                    ),
                  );
                },
                iconsItme: Icons.videocam_outlined,
                numItme: 25,
                URL2: imageMeneger.image4,
                decItme: MyText.title22),
          ],
        ),
      ),
    );
  }
}
