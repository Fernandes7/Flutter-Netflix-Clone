import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/search/search_bloc.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Core/Colors/stringconstant.dart';
import 'package:netflix/Presentation/Search/widget/title.dart';

class Searchideal extends StatelessWidget {
  const Searchideal({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitile(title: "Top Searches"),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading == true) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.blue),
                );
              } else {
                if (state.isError == true) {
                  return const Center(
                    child: Text("An Error Occured"),
                  );
                } else {
                  if (state.idleList.isEmpty) {
                    return const Center(child: Text("List is Empty"));
                  }
                }

                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (cxt, index) {
                      final movie = state.idleList[index];
                      return TopsearchItems(
                          title: movie.title ?? "No Name provided",
                          imageurl: "$imageappendurl/${movie.posterPath}");
                    },
                    separatorBuilder: (cxt, index) => kheight20,
                    itemCount: state.idleList.length);
              }
            },
          ),
        )
      ],
    );
  }
}

class TopsearchItems extends StatelessWidget {
  final String title;
  final String imageurl;
  const TopsearchItems(
      {super.key, required this.title, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            width: screenwidth * 0.4,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageurl)))),
        kwidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )),
        const CircleAvatar(
          backgroundColor: kcolor,
          radius: 20,

          child: CircleAvatar(
              radius:19,
              backgroundColor: kblackcolor,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kcolor,
              )),
        )
      ],
    );
  }
}
