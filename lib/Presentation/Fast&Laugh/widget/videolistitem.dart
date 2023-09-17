import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';

const iconimageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/gPbM0MK8CP8A174rmUwGsADNYKD.jpg";

class Videolistitem extends StatelessWidget {
  final int index;
  const Videolistitem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(color: Colors.accents[index]),
      Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_off),
                  )),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(iconimageurl),
                  ),
                  VideorightElements(icon: Icons.emoji_emotions, title: "LOL"),
                  VideorightElements(icon: Icons.add, title: "Addit"),
                  VideorightElements(icon: Icons.share, title: "Share"),
                  VideorightElements(icon: Icons.play_circle, title: "My list")
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class VideorightElements extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideorightElements(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(children: [
          Icon(icon, color: kcolor, size: 30),
          Text(title, style: const TextStyle(color: kcolor, fontSize: 16))
        ]));
  }
}
