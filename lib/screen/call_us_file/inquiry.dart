import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';


class inquiry extends StatelessWidget {
  const inquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  MyText.title45,
                  style: MyTextStyle.style3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: MyText.enterName,
                        hintStyle: MyTextStyle.style4,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    // maxLines: 1,
                    // maxLength: 20,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: MyText.enterEmail,
                      hintStyle: MyTextStyle.style4,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 45,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: MyText.enterPhone,
                        hintStyle:MyTextStyle.style4,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        suffixIcon: Icon(
                          Icons.phone_outlined,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      MyText.theMessage,
                      style:MyTextStyle.style5
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.message_outlined,
                      color: Colors.grey[500],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLines: 5,
                  // maxLength: 20,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintStyle: MyTextStyle.style4,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:MyColors.MyAction,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(MyText.thisCode),
                    ),
                    SizedBox(
                      width: 100,
                      height: 45,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText:MyText.ValidationCode,
                          hintStyle: MyTextStyle.style4,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: MyColors.MyAction,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      label: Text(
                      MyText.send,
                        style:MyTextStyle.style6
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
