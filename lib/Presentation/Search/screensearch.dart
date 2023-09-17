import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/Application/search/search_bloc.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Presentation/Search/widget/searchidle.dart';
import 'package:netflix/Presentation/Search/widget/searchresult.dart';

import '../../Domain/debounce/debounce.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final debouce = Debouncer(milliseconds: 1 * 1000);
    BlocProvider.of<SearchBloc>(context).add(const Initilize());
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                debouce.run(() {
                  BlocProvider.of<SearchBloc>(context)
                      .add(SearchMovie(moviequery: value));
                });
              },
              backgroundColor: Colors.grey.withOpacity(0.2),
              prefixIcon: Icon(CupertinoIcons.search, color: Colors.amber[50]),
              suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,
                  color: Colors.amber[50]),
              style: TextStyle(color: Colors.amber[50])),
          kheight,
          Expanded(child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.searchresultlist.isEmpty) {
                return const Searchideal();
              } else {
                return const SearchResult();
              }
            },
          ))
        ],
      )),
    );
  }
}
