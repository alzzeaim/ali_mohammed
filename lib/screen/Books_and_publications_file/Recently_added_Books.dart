import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type5_new.dart';


class RecentlyAddedBooks extends StatelessWidget {
  const RecentlyAddedBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
          child: Stack(
            children: [
              ItmeType5New(
                isNew: true,
                URL3:imageMeneger.image5,
                decItme:
                   MyText.title8,
                nextPage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VideoSeries(),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
