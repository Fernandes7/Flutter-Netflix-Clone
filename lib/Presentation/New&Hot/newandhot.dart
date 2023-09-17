import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/Colors/constants.dart';

class NewandHot extends StatelessWidget {
  const NewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: AppBar(
                title: Text("New & Hot",
                    style: GoogleFonts.montserrat().copyWith(
                        color: kcolor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                actions: const [
                  Icon(
                    Icons.cast,
                    color: Colors.white,
                  ),
                  kwidth,
                  Icon(
                    Icons.heart_broken,
                    size: 25,
                    color: kcolor,
                  ),
                  kwidth
                ],
                bottom: TabBar(
                    labelColor: kblackcolor,
                    unselectedLabelColor: kcolor,
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                        color: kcolor, borderRadius: BorderRadius.circular(10)),
                    indicatorColor: null,
                    tabs: const [
                      Tab(text: "❤️ Coming Soon"),
                      Tab(text: "😘 Everyones Watching")
                    ]),
              )),
          body: const TabBarView(children: [])),
    );
  }
}
