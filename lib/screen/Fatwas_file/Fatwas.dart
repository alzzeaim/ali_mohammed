import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Fatwas_file/next_fatwas.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type2_new.dart';


class Fatwas extends StatelessWidget {
  const Fatwas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      body: SafeArea(
        child: Stack(
          children: [

            ItmeType2New(
              
              isNew: false,
              title:
                  MyText.title10,
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
