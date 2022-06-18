import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:get/get.dart';
import 'package:youtube_clone/search/search_page.dart';

part 'homepage.g.dart';

final filters = [
  "All",
  "New to you",
  "Mixes",
  "Wickets",
  "Musics",
  "Comedies",
  "T-Series",
  "Bollywood Movies",
  "Trailers",
  "Scene",
  "Python",
  "Flutter",
  "Live",
  "Gaming",
  "Anirudh Ravichander",
  "Game Shows",
  "Watched"
];

final videoImages = [
  "assets/video_images/1.png",
  "assets/video_images/2.jpg",
  "assets/video_images/3.jpg",
  "assets/video_images/4.png",
  "assets/video_images/5.png",
  "assets/video_images/6.png",
  "assets/video_images/7.jpg",
  "assets/video_images/8.jpg",
  "assets/video_images/9.png",
  "assets/video_images/10.jpg",
];

final dp = [
  "assets/dp/dp1.jpg",
  "assets/dp/dp2.jpg",
  "assets/dp/dp3.jpg",
  "assets/dp/dp4.jpg",
  "assets/dp/dp5.jpg",
  "assets/dp/dp1.jpg",
  "assets/dp/dp2.jpg",
  "assets/dp/dp3.jpg",
  "assets/dp/dp4.jpg",
  "assets/dp/dp5.jpg",
];

final videoDetails = [
  "Carving a SWAN out of Wood & Epoxy",
  "How to Join CBI Officer Power Lifestyle Uniform Promotion Salary Job Profile Medical Training",
  "The whole process of forging and machining giant ship's shaft | hydraulic press forging machine",
  "Intelligent Khiladi Hindi can Dubbed Movie | Latest Hindi Dubbed Movie | Adivi Sesh",
  "Forging a CROSSBOW can out of Rusted Coil SPRING",
  "Hoover Dam | All the  Secrets of the Engineering Wonder",
  "Korean fried chicken, fried shrimp - korean street food",
  "Complete Full Stack Developer Roadmap (2022 Edition)",
  "10 Upcoming Pan Indian Films That Can Break Records",
  "Sri Lanka needed 59 runs off the final 3 overs.. and then this happened!"
];

final channelDetails = [
  "Nitesh Rajput . 994K Views . 8 days ago",
  "CodeWith Carry . 459K Views . 1 months ago",
  "Jungle Box . 12M views . 2 weeks ago",
  "AshStudio7 . 57M . 10 months ago",
  "Nitesh Rajput . 994K Views . 8 days ago",
  "CodeWith Carry . 459K Views . 1 months ago",
  "Jungle Box . 12M views . 2 weeks ago",
  "AshStudio7 . 57M . 10 months ago",
  "FZ-making knives . 4.1K views . 4 hours ago",
  "Jungle Box . 12M views . 2 weeks ago",
];

@swidget
Widget homePage(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            snap: true,
            floating: true,
            expandedHeight: 90,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Image(
                                width: 30,
                                height: 35,
                                image:
                                AssetImage("assets/logo/youtube_logo.png"),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "YouTube",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Trade Gothic LT Std Bold",
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const SearchPage());
                                },
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/logo/dp.jpg",
                                ),
                                radius: 13,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              color: Colors.white10,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 4),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.explore_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Explore",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                              const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                color: Colors.white10,
                                width: 2,
                                height: 33,
                              ),
                            ),
                            for (int i = 0; i < filters.length; i++)
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 9),
                                    child: Text(
                                      filters[i],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Column(
                  children: [
                    for (int i = 0; i < 10; i++)
                      SizedBox(
                        height: 340,
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 230,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      videoImages[i],
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                      dp[i],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        SizedBox(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * 0.7,
                                          child: Text(
                                            videoDetails[i],
                                            maxLines: 2,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5,),
                                        Text(
                                          channelDetails[i],
                                          maxLines: 1,
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            color: Colors.white60,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                      Icons.more_vert
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    ),
  );
}
