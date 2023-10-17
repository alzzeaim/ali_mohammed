import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Religious%20pearls_file/next_Religious_pearls.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type4_new.dart';

import '../../widget/Video_series.dart';

class ReligiousPearls extends StatelessWidget {
  const ReligiousPearls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.MyBackGround,
        body: SafeArea(
            child: ItmeType4New(
          isNew: false,
          URL3: imageMeneger.image6,
          decItme: MyText.title20,
          nextPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NextReligiousPearls(),
              ),
            );
          },
        )));
  }
}
