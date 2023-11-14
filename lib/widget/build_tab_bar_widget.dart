import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';

Widget buildTabBar({
  required BuildContext context,
  required TabController tabController,
  required String title2,
  required IconData icon,
  String? title1,
}) {
  return Container(
    // height: 50,
    width: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSize.z5)),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.p10,
          ),
          child: TabBar(
            unselectedLabelColor: MyColors.grey2_N_Color,
            labelColor: MyColors.whiteColor,
            indicatorColor: MyColors.whiteColor,
            dividerColor: MyColors.whiteColor,
            indicatorWeight: 0,
            indicator: BoxDecoration(
              color: MyColors.MyAction,
              borderRadius: BorderRadius.circular(AppSize.z5),
            ),
            controller: tabController,
            tabs: [
              Tab(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(AppPadding.p5),
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppSize.z15,
                        ),
                        //text1
                        Text(
                          title1 ?? MyText.textOfTapBarl1,
                          // style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: AppSize.z10,
                        ),
                        Icon(Icons.watch_later_outlined),
                      ],
                    ),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(AppSize.z10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppSize.z25,
                        ),
                        //text2
                        Text(title2),
                        SizedBox(
                          width: AppSize.z10,
                        ),
                        Icon(
                          icon,
                          // color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
