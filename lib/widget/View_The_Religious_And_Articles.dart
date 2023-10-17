import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';

import '../constant/text.dart';
import '../constant/text_style.dart';

class ViewTheReligiousAndArticles extends StatelessWidget {
  String title;
  String dec;
   ViewTheReligiousAndArticles({
    super.key,required this.title,required this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          height: 210,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageMeneger.image6,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                 title,
                  style: MyTextStyle.style27,
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  width: double.infinity,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(dec,
                    textAlign: TextAlign.right, style: MyTextStyle.style28)
              ]),
        )
      ],
    );
  }
}
