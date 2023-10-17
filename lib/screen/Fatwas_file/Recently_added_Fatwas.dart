import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Fatwas_file/next_fatwas.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type2_new.dart';


class RecentlyAddedFatwas extends StatelessWidget {
  const RecentlyAddedFatwas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.MyBackGround,
      body: SafeArea(
        child: Stack(
          children: [
            ItmeType2New(
              isNew: true,
              title:
                  MyText.title17,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextFatwas(),
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
