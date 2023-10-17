import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';

class ItemOfVoice extends StatelessWidget {
  const ItemOfVoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.file_download_outlined,
                    size: 26, color: MyColors.MyAction),
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
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.mic_none_rounded,
              size: 24,
              color: MyColors.MyAction,
            ),
          )
        ],
      ),
    );
  }
}
