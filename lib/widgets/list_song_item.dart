
import 'package:flutter/material.dart';

import '../model/song.dart';

class ListSongItem extends StatelessWidget {
  final List<SongModel> listSong;
  final SongModel song;
  const ListSongItem({super.key, required this.listSong, required this.song});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(  
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(song.image),
                fit: BoxFit.cover,
              ),
            ),
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
                    song.date,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 8),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    song.time,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 8),
                  )
                ],
              ),
              SizedBox(
                height: 3,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  song.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
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
    );
  }
}
