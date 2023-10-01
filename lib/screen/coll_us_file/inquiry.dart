import 'package:flutter/material.dart';

import '../../../widget/Video_series.dart';
import '../../widget/type_of_itme/itme_type3.dart';

class inquiry extends StatelessWidget {
  const inquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
        body: SafeArea(
          child: ItmeType3(
            numItme: 10,
            URL3: "assets/images/seven.jpg",
            decItme:
                "أذكار النوم الصحيحة أذكار النوم الصحيحة  أذكار النوم الصحيحة ",
            nextPage: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => VideoSeries(),
                ),
              );
            },
          ),
        ));
  }
}
