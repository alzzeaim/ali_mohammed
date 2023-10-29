import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';



class TabBarPage extends StatefulWidget {
  String tap11;
  String tap22;
  Widget page1;
  Widget page2;
  TabBarPage({
    super.key,
    required this.tap11,
    required this.tap22,
    required this.page1,
    required this.page2,
  });

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MyColors.MyBackGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: AppSize.z20),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: MyColors.whiteColor,
                      borderRadius: BorderRadius.circular(AppPadding.p5)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: AppPadding.p10,
                        ),
                        child: TabBar(
                          unselectedLabelColor:
                              MyColors.grey2_N_Color,
                          labelColor:MyColors.whiteColor,
                          indicatorColor: MyColors.whiteColor,
                          dividerColor: MyColors.whiteColor,
                          indicatorWeight: 0,
                          indicator: BoxDecoration(
                            color: MyColors.MyAction,
                            borderRadius: BorderRadius.circular(AppPadding.p5),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              child: Center(
                                child: Padding(
                                  padding:  EdgeInsets.all(AppPadding.p5),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: AppSize.z15,
                                      ),
                                      //text1
                                      Text(
                                        widget.tap11,
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
                                  padding:  EdgeInsets.all(AppSize.z10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: AppSize.z25,
                                      ),
                                      //text2
                                      Text(widget.tap22),
                                      SizedBox(
                                        width: AppSize.z10,
                                      ),
                                      Icon(
                                        Icons.videocam_outlined,
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
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      widget.page1,
                      widget.page2,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
