import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type5_new.dart';

class RecentlyAddedBooks extends StatelessWidget {
  const RecentlyAddedBooks({Key? key, required this.isNew}) : super(key: key);
  final bool isNew;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.MyBackGround,
        body: SafeArea(
          child: Column(
            children: [
              ItmeType5New(
                isNew: isNew,
                URL3: imageMeneger.image5,
                decItme: MyText.title8,
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
