import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';
import '../constant/text.dart';

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            right: AppSize.z5,
            top: AppSize.z15,
          ),
          width: AppSize.z50,
          height: AppSize.z50,
          decoration: BoxDecoration(
            color: MyColors.backGroundSearch,
            borderRadius: BorderRadius.circular(AppSize.z15),
          ),
          child: Icon(
            Icons.search_rounded,
            color: MyColors.MyAction,
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(AppPadding.p8),
          child: Container(
            margin: EdgeInsets.only(
              top: AppSize.z15,
            ),
            width: AppSize.z320,
            height: AppSize.z50,
            decoration: BoxDecoration(
                border: Border.all(color: MyColors.whiteColor),
                color: MyColors.backGroundSearch,
                borderRadius: BorderRadius.circular(AppSize.z15)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: MyText.searsh_about,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.z10,
                ),
                Icon(
                  Icons.search,
                  color: MyColors.MyAction,
                ),
                SizedBox(
                  width: AppSize.z10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}