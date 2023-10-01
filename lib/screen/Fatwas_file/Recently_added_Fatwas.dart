import 'package:flutter/material.dart';

import '../../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type2_new.dart';



class RecentlyAddedFatwas extends StatelessWidget {
  const RecentlyAddedFatwas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [
            ItmeType2New(
              title:
                  "هل تسوية الصفوف في صلاة الجماعة واجبة ، بمعنى  أن المصلين يأثمون إذا لم يسووا الصفوف ؟",
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
      ),
    );
  }
}
