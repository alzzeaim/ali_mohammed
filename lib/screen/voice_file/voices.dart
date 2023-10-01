import 'package:flutter/material.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type1.dart';


class Voices extends StatelessWidget {
  const Voices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
          child: Stack(
            children: [
              ItmeType1(
                  nextPage: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VideoSeries(),
                      ),
                    );
                  },
                  iconsItme1: Icons.mic_none_rounded,
                  numItme1: 29,
                  URL1: "assets/images/voice1.png",
                  decItme1: "روائع ابن القيم رحمه الله"),
            ],
          ),
        ));
  }
}
