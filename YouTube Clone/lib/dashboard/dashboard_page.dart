import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:youtube_clone/dashboard/homepage.dart';

part 'dashboard_page.g.dart';

  @hwidget
  Widget dashboardPage(BuildContext context) {

    var tabController = useTabController(initialIndex: 0, initialLength: 5);

    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomePage(),
          Container(),
          Container(),
          Container(),
          Container(),
        ].map((e) => ClipRect(child: e)).toList(),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Column(
          children: [
            Container(
              color: Colors.white24,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 8,),
            Row(
              children: [
                const SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    tabController.index = 0;
                  },
                  child: SizedBox(
                    width: 45,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    tabController.index = 1;
                  },
                  child: SizedBox(
                    width: 45,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.slow_motion_video_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "Shorts",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    tabController.index = 2;
                  },
                  child: const Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    tabController.index = 3;
                  },
                  child: SizedBox(
                    width: 45,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.subscriptions_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "Subscription",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    tabController.index = 4;
                  },
                  child: SizedBox(
                    width: 45,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.video_library_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
              ],
            ),
          ],
        ),
      ),
    );
  }
