import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type5_new%20copy.dart';

import '../screen/homePage.dart';

class VideoSeries extends StatefulWidget {
  const VideoSeries({super.key});

  @override
  State<VideoSeries> createState() => _VideoSeriesState();
}

class _VideoSeriesState extends State<VideoSeries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ItmeType5New2(URL3: imageMeneger.image4, decItme: "decItme", nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              }, isNew: false),
              // itme
          ],
        ),
      ),
    );
  }
}
