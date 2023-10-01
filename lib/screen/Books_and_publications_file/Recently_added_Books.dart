import 'package:flutter/material.dart';

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
                URL3: "assets/images/book1.png",
                decItme:
                    "الآثار العقدية الواردة عن الخلفاء الراشدين  الأربعة تنسيق 7-4-2022 (1)",
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
