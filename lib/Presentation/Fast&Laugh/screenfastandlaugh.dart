import 'package:flutter/material.dart';
import 'package:netflix/Presentation/Fast&Laugh/widget/videolistitem.dart';

class Screenfastandlaugh extends StatelessWidget {
  const Screenfastandlaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) => Videolistitem(index: index)),
    )));
  }
}
