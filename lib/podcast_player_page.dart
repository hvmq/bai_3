import 'dart:ui';

import 'package:flutter/material.dart';

import 'model/song.dart';

class PodcastPlayer extends StatefulWidget {
  final Song song;
  List<Song> listSong;
  PodcastPlayer({super.key, required this.song, required this.listSong});

  @override
  State<PodcastPlayer> createState() => _PodcastPlayerState();
}

class _PodcastPlayerState extends State<PodcastPlayer> {
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
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
                  height: 220,
                  width: 200,
                  child: Stack(children: [
                    Center(
                        child: Image.asset(
                      widget.song.image,
                      height: 220,
                      width: 180,
                    )),
                    Positioned.fill(
                        child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Container(),
                    )),
                    Positioned(top: -5, child: Image.asset(widget.song.image)),
                    Positioned(
                      top: 5,
                      right: 18,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "assets/heart.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  widget.song.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
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
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/play.png",
                      width: 35,
                      height: 35,
                    ),
                  ),
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
              Image.asset(
                "assets/Timeline.png",
                fit: BoxFit.fill,
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
                      itemCount: widget.listSong.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PodcastPlayer(
                                        song: widget.listSong[index],
                                        listSong: widget.listSong,
                                      )),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  widget.listSong[index].image,
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
                                          widget.listSong[index].date,
                                          style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              fontSize: 8),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          widget.listSong[index].time,
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
                                        widget.listSong[index].name,
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
      ),
    );
  }
}
