import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';


import 'package:flutter/material.dart';

import '../model/song.dart';
import '../widgets/list_song_item.dart';
import '../widgets/toggle_heart.dart';
import '../widgets/toggle_play.dart';

class PodcastPlayer extends StatelessWidget {
  final SongModel song;
  final List<SongModel> listSong;
  const PodcastPlayer({super.key, required this.song, required this.listSong});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF192038),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/setting.png",
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  height: 250,
                  width: 230,
                  child: Stack(children: [
                    Center(
                        child: Image.asset(
                      song.image,
                      height: 250,
                      width: 210,
                    )),
                    Positioned.fill(
                        child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Container(),
                    )),
                    Positioned(
                      top: 0,
                      child: Container(
                        height: 220,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(song.image),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(top: 5, right: 18, child: ToggleHeart())
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  song.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/shuffle.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/back.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const TogglePlay(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/next.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/Sync.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
              ProgressBar(
                progress: Duration(seconds: 60),
                total: Duration(seconds: 180),
                thumbColor: Colors.white,
                baseBarColor: Colors.white.withOpacity(0.24),
                progressBarColor: Colors.red,
                timeLabelTextStyle: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 10),
              ),
              const SizedBox(
                height: 10,
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
                        Navigator.pop(context);
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
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
