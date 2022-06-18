import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:get/get.dart';
import 'package:youtube_clone/dashboard/homepage.dart';
import 'package:youtube_clone/search/search_result_page.dart';

part 'search_page.g.dart';

@hwidget
Widget searchPage(BuildContext context) {
  final searchCtrl = useTextEditingController();

  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 35,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 17, left: 10),
                  color: Colors.white10,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextField(
                    controller: searchCtrl,
                    textInputAction: TextInputAction.search,
                    autofocus: true,
                    onSubmitted: (data) {
                      List<int> videoIndex = [];
                      var video = videoDetails.where((element) => element.toLowerCase().contains(searchCtrl.text.toLowerCase()));
                      for(var i in video) {
                        videoIndex.add(videoDetails.indexOf(i));
                      }
                      print(videoIndex);
                      Get.to(SearchResultPage(videoIndex));
                    },
                    decoration: const InputDecoration(
                      hintText: "Search YouTube",
                      hintStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white10,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: const Icon(Icons.keyboard_voice_rounded),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
