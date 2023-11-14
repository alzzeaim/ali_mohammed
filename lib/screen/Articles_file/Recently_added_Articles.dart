import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/next_articels.dart';

import '../../widget/type_of_itme/itme_type3_new.dart';

class RecentlyAddedArticles extends StatelessWidget {
  const RecentlyAddedArticles({Key? key, required this.isNew})
      : super(key: key);
  final bool isNew;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Column(
          children: [
            ItmeType3New(
              isNew: isNew,
              numItme: 15,
              URL3: imageMeneger.image2,
              decItme: MyText.title4,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextArticles(),
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
