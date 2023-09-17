import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:netflix/Presentation/Home/numberdcardwithnumber.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/hfExJPcbBtDeFDEb7I1By72Drlr.jpg";

class NumberedCard extends StatelessWidget {
  final int index;
  const NumberedCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(imageurl), fit: BoxFit.cover),
                    borderRadius: kradius),
              ),
            ),
          ],
        ),
        Positioned(
            bottom: 0, left: 0, child: NumberedCardwithNumber(index: index))
      ],
    );
  }
}
