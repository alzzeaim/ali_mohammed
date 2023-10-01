import 'package:flutter/material.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type1_new.dart';

class RecentlyAddedVideos extends StatelessWidget {
  const RecentlyAddedVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [
            ItmeType1New(
                nextPage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VideoSeries(),
                    ),
                  );
                },
                iconsItme: Icons.videocam_outlined,
                numItme: 25,
                URL2: "assets/images/video1.png",
                decItme:
                    "الفوائد العلمية المطرية في التعليقات على الأربعين النووية "),
          ],
        ),
      ),
    );
  }
}
