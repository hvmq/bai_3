import 'package:bai_3/widgets/list_category_item.dart';
import 'package:bai_3/widgets/list_song_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import '../model/category.dart';
import '../model/song.dart';
import 'podcast_player_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<SongModel> listSong = [
  SongModel("assets/song1.jpg", "The Year in MoGraph - 2020", "3 hr 31 min",
      "DEC 30, 2020"),
  SongModel("assets/song2.jpg", "Episode 197: The World of Lettering", "42 min",
      "DEC 2, 2020"),
  SongModel("assets/song3.jpeg", "How to Create YouTube Video Ads That Convert",
      "52 min", "DEC 18, 2020"),
  SongModel("assets/song4.jpeg", "Airbnbs Brian Chesky: Designing for trust",
      "46 min", "DEC 15, 2020"),
  SongModel("assets/song5.jpg", "Sounds Worth Saving", "46 min", "DEC 09, 2020")
];

List<CategoryModel> listCategory = [
  CategoryModel(0xFFF5AF19, 0xFFF12711, "Education"),
  CategoryModel(0x340FD1, 0xFF623DEF, "Society"),
  CategoryModel(0xFF43EF1D, 0xFF0D80F2, "Sports"),
  CategoryModel(0xFFE9228D, 0xFFF12711, "Films"),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
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
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/bell.png",
                      width: 24,
                      height: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Looking for podcast channels",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: const Color(0xFF222B45),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      hintText: "Search",
                      hintStyle: const TextStyle(
                          color: Color(0xFF8F9BB3), fontSize: 14),
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
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/chevron-down.png",
                      width: 24,
                      height: 24,
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
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listCategory.length,
                    itemBuilder: (context, index) {
                      return ListCategoryItem(category: listCategory[index]);
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
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ],
              ),
              SizedBox(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
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
                        child: ListSongItem(
                            listSong: listSong, song: listSong[index]),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
