import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type5_new.dart';

import '../../../../widget/Video_series.dart';

class BooksAndPublications extends StatelessWidget {
  const BooksAndPublications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
            child: ItmeType5New(
          isNew: false,
          URL3: imageMeneger.image5,
          decItme:
              MyText.title7,
          nextPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VideoSeries(),
              ),
            );
          },
        )));
  }
}
