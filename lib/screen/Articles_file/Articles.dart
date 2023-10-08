// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type3_new.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
          child: ItmeType3New(
              numItme: 10,
              URL3: imageMeneger.image2,
              decItme: MyText.title2,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoSeries(),
                  ),
                );
              },
              isNew: false),
        ));
  }
}
