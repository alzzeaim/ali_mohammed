import 'package:flutter/material.dart';

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
            ItmeType4New(URL3: "assets/images/dorerr1.png", decItme: "يتحقق تعظيم الله تعالى بإثبات صفاته  له كما يليق به  له كما يليق به", nextPage: () {
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
