import 'package:flutter/cupertino.dart';
import 'package:netflix/Core/Colors/constants.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg";

class Maincard extends StatelessWidget {
  const Maincard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 120,
        height: 250,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(imageurl), fit: BoxFit.cover),
            borderRadius: kradius),
      ),
    );
  }
}
