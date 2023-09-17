import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Presentation/Home/Mainpagecards.dart';
import 'package:netflix/Presentation/Home/numbercard.dart';
import 'package:netflix/Presentation/Widgets/maintitle.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(homeimage),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.play_arrow),
                            label: const Text("Play"),
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(kcolor)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Mainpagescrollcarda(
                  title: "Released The past Year",
                ),
                kheight,
                const Mainpagescrollcarda(title: "Trending Now"),
                kheight,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Maintitlewidget(title: "Main 10 Films"),
                    LimitedBox(
                      maxHeight: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                            10,
                            (index) => NumberedCard(
                                  index: index,
                                )),
                      ),
                    )
                  ],
                ),
                kheight,
                const Mainpagescrollcarda(
                  title: "Trends Drams",
                ),
                kheight,
                const Mainpagescrollcarda(
                  title: "South Indian Cinemas",
                )
              ],
            )));
  }
}
