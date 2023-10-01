import 'package:flutter/material.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type1_new.dart';

class RecentlyAddedVoices extends StatelessWidget {
  const RecentlyAddedVoices({Key? key}) : super(key: key);

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
                      builder: (context) => VideoSeries(),
                    ),
                  );
                },
                iconsItme: Icons.mic_none_rounded,
                numItme: 20,
                URL2: "assets/images/voice1.png",
                decItme: "روائع ابن القيم رحمه الله"),
          ],
        ),
      ),
    );
  }
}
