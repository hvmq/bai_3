import 'package:bai_3/podcast_player_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/category.dart';
import 'model/song.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<Song> listSong = [
  Song("assets/song1.png", "The Year in MoGraph - 2020", "3 hr 31 min",
      "DEC 30, 2020"),
  Song("assets/song2.png", "Episode 197: The World of Lettering", "42 min",
      "DEC 2, 2020"),
  Song("assets/song3.png", "How to Create YouTube Video Ads That Convert",
      "52 min", "DEC 18, 2020"),
  Song("assets/song4.png", "Airbnbs Brian Chesky: Designing for trust",
      "46 min", "DEC 15, 2020"),
  Song("assets/song5.png", "Sounds Worth Saving", "46 min", "DEC 09, 2020")
];

List<Category> listCategory = [
  Category(0xFFF5AF19, 0xFFF12711, "Education"),
  Category(0xFF623DEF, 0x340FD1, "Society"),
  Category(0xFF43EF1D, 0xFF0D80F2, "Sports"),
  Category(0xFFE9228D, 0xFFF12711, "Films"),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Welcome John Doe',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/bell.png",
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Looking for podcast channels",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    filled: true,
                    fillColor: const Color(0xFF222B45),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: "Search",
                    hintStyle:
                        const TextStyle(color: Color(0xFF8F9BB3), fontSize: 12),
                    prefixIcon: Image.asset(
                      "assets/search.png",
                      width: 18,
                      height: 18,
                    )),
              ),
            ),
            Row(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/chevron-down.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                const Expanded(child: SizedBox()),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "SF-Pro-Text"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 95,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8, top: 7),
                      child: Container(
                        width: 75,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(listCategory[index].colorBegin),
                                  Color(listCategory[index].colorEnd),
                                ]),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          listCategory[index].category,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Best Podcast Episodes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "SF-Pro-Display"),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: "SF-Pro-Text"),
                  ),
                ),
              ],
            ),
            SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listSong.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PodcastPlayer(
                                      song: listSong[index],
                                      listSong: listSong,
                                    )),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Row(
                            children: [
                              Image.asset(
                                listSong[index].image,
                                height: 40,
                                width: 40,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        listSong[index].date,
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontSize: 8),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        listSong[index].time,
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 8),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 210,
                                    child: Text(
                                      listSong[index].name,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  "assets/choose.png",
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
