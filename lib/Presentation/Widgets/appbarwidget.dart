import 'package:flutter/material.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Core/Colors/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: GoogleFonts.montserrat()
                .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        kwidth,
        const Icon(
          Icons.heart_broken,
          size: 25,
          color: kcolor,
        ),
        kwidth
      ],
    );
  }
}
