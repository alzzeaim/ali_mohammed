import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type4_new.dart';


class RecentlyAddedReligious extends StatelessWidget {
  const RecentlyAddedReligious({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [
            ItmeType4New(
              isNew: true,
              URL3: imageMeneger.image6, 
              decItme: MyText.title18,
               nextPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VideoSeries(),
              ),
            );
          },)
          ],
        ),
      ),
    );
  }
}
