import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/search/search_bloc.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Core/Colors/stringconstant.dart';
import 'package:netflix/Presentation/Search/widget/title.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitile(title: "Movies and TV"),
        kheight,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: .75,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                final movie = state.searchresultlist[index];
                return GridimageScreen(
                    imageURL: "$imageappendurl/${movie.posterPath}");
              }),
            );
          },
        ))
      ],
    );
  }
}

class GridimageScreen extends StatelessWidget {
  final String imageURL;
  const GridimageScreen({super.key, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageURL),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
