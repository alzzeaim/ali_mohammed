import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';

import '../constant/colors.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';

class ItemOfVoice extends StatelessWidget {
  IconData icona;
  ItemOfVoice({
    super.key,
    required this.icona,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: AppMargin.m10, horizontal: AppMargin.m15),
      width: double.infinity,
      height: AppSize.z100,
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSize.z15),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(AppPadding.p15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(icona, size: AppSize.z26, color: MyColors.MyAction),
              ],
            ),
          ),
          // Container(
          //   height: 40,
          //   padding: const EdgeInsets.only(
          //     left: 5,
          //     right: 10,
          //     top: 5,
          //     bottom: 5,
          //   ),
          //   decoration: const BoxDecoration(
          //     color: Color.fromRGBO(148, 133, 74, 1),
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(20),
          //       bottomLeft: Radius.circular(20),
          //     ),
          //   ),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Icon(
          //         Icons.chevron_left_rounded,
          //         color: Colors.white,
          //       ),
          //       Text(
          //         " مشاهدة",
          //         style: TextStyle(
          //           color: Colors.white,
          //           // color: Color.fromRGBO(148, 133, 74, 1),
          //           fontSize: 12,
          //           fontWeight: FontWeight.w600,
          //         ),
          //         textAlign: TextAlign.right,
          //       ),
          //     ],
          //   ),
          // ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  MyText.title26,
                  textAlign: TextAlign.right,
                  style: MyTextStyle.style13,
                ),
                Text(MyText.title27,
                    textAlign: TextAlign.right, style: MyTextStyle.style14),
              ],
            ),
          ),
          SizedBox(
            width: AppSize.z10,
          ),
          Padding(
            padding: EdgeInsets.only(right: AppPadding.p10),
            child: Icon(
              Icons.mic_none_rounded,
              size: AppSize.z24,
              color: MyColors.MyAction,
            ),
          )
        ],
      ),
    );
  }
}
