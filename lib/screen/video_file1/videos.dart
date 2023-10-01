import 'package:flutter/material.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type1.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
            child: Stack(children: [
          ItmeType1(
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoSeries(),
                  ),
                );
              },
              iconsItme1: Icons.videocam_outlined,
              numItme1: 20,
              URL1: "assets/images/video1.png",
              decItme1:
                  "الفوائد العلمية المطرية في التعليقات على الأربعين النووية "),
        ])));
  }
}
