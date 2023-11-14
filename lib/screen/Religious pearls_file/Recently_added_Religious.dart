import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../widget/type_of_itme/itme_type4_new.dart';
import 'next_Religious_pearls.dart';

class RecentlyAddedReligious extends StatelessWidget {
  const RecentlyAddedReligious({Key? key, required this.isNew})
      : super(key: key);
  final bool isNew;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Column(
          children: [
            ItmeType4New(
              isNew: isNew,
              URL3: imageMeneger.image6,
              decItme: MyText.title18,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextReligiousPearls(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
