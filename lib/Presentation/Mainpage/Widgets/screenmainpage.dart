import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Downloads/Widget/screendownload.dart';
import 'package:netflix/Presentation/Fast&Laugh/screenfastandlaugh.dart';
import 'package:netflix/Presentation/Home/homescreen.dart';
import 'package:netflix/Presentation/Mainpage/Widgets/bottomnavgition.dart';
import 'package:netflix/Presentation/New&Hot/newandhot.dart';
import 'package:netflix/Presentation/Search/Screensearch.dart';

class Screenmainpage extends StatelessWidget {
  Screenmainpage({super.key});
  final pages = [
    Screenhome(),
    NewandHot(),
    Screenfastandlaugh(),
    Searchscreen(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int pageno, Widget? _) {
        return Scaffold(
          body: SafeArea(
            child: pages[pageno],
          ),
          bottomNavigationBar: const Bottomnavigation(),
        );
      },
    );
  }
}
