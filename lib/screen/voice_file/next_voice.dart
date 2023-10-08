import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../../widget/app_bar_actions.dart';
import '../../widget/app_bar_title.dart';
import '../homePage.dart';

class NextVoice extends StatefulWidget {
  const NextVoice({super.key});

  @override
  State<NextVoice> createState() => _NextVoiceState();
}

class _NextVoiceState extends State<NextVoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(
          titel: MyText.title25,
        ),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          })
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 120,
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
                  Icon(
                    Icons.file_download_outlined,
                    size: 26,
                    color: Color.fromRGBO(148, 137, 74, 1),
                  ),
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
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    MyText.title27,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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
                color: Color.fromRGBO(148, 137, 74, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
