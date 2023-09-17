import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/downloads/downloads_bloc.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Core/Colors/stringconstant.dart';
import 'package:netflix/Presentation/Widgets/appbarwidget.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});
  final widgetlist = const [Smartdowlods(), SectionTwo(), SectionThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
            padding: const EdgeInsets.all(20),
            itemBuilder: (cxt, index) => widgetlist[index],
            separatorBuilder: (cxt, index) => const SizedBox(
                  height: 40,
                ),
            itemCount: widgetlist.length));
  }
}

class Smartdowlods extends StatelessWidget {
  const Smartdowlods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kcolor,
        ),
        Text("Smart Downloads")
      ],
    );
  }
}

class DownlodsImage extends StatelessWidget {
  const DownlodsImage(
      {super.key,
      required this.size,
      required this.imagelist,
      required this.margin,
      required this.angle});

  final Size size;
  final String imagelist;
  final EdgeInsets margin;
  final int angle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.45,
        height: size.width * 0.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imagelist))),
      ),
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final Size size = MediaQuery.of(context).size;
    return Column(children: [
      const Text(
        "Introducing Downloads for You",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      kheight,
      const Text(
        "Get access to maintain your own custom personal lists, track what you've , on TV or available on popular streaming services like Netflix, Amazon Prime Video, Hotstar,\n Voot, and Jio.",
        style:
            TextStyle(fontSize: 15, color: Color.fromARGB(255, 179, 176, 176)),
        textAlign: TextAlign.center,
      ),
      BlocBuilder<DownloadsBloc, Downloadstates>(
        builder: (context, state) {
          if (state.isLoading == true) {
            return const Center(
              child: Text("Loading........"),
            );
          } else {
            return SizedBox(
                width: size.width,
                height: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.35,
                      backgroundColor: const Color.fromARGB(255, 64, 62, 62),
                    ),
                    DownlodsImage(
                        size: size,
                        imagelist:
                            '$imageappendurl${state.downloads[6].posterPath}',
                        margin: const EdgeInsets.only(right: 100),
                        angle: -20),
                    DownlodsImage(
                        size: size,
                        imagelist:
                            '$imageappendurl${state.downloads[7].posterPath}',
                        margin: const EdgeInsets.only(left: 100),
                        angle: 20),
                    DownlodsImage(
                        size: size,
                        imagelist:
                            '$imageappendurl${state.downloads[8].posterPath}',
                        margin: const EdgeInsets.only(left: 0),
                        angle: 0)
                  ],
                ));
          }
        },
      )
    ]);
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kbuttonblue,
            child: const Text("Set Up",
                style: TextStyle(
                    color: kcolor, fontWeight: FontWeight.bold, fontSize: 20)),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kbuttonwhite,
            child: const Text("See What You Can Download",
                style: TextStyle(
                    color: kblackcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ),
        )
      ],
    );
  }
}
