import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';



class ContactInformation extends StatelessWidget {
  const ContactInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 100),
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // border: Border.all(
                //     color: Color.fromRGBO(148, 137, 74, 1), width: 10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                           MyText.phonNumber,
                            style: MyTextStyle.style3
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(
                            Icons.phone,
                            color:MyColors.MyAction,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            MyText.emailAddres,
                            style:MyTextStyle.style3
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(
                            Icons.email_outlined,
                            color: MyColors.MyAction,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            MyText.location,
                            style: MyTextStyle.style3
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: MyColors.MyAction,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
