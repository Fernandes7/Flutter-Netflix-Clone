import 'package:flutter/cupertino.dart';

class Maintitlewidget extends StatelessWidget {
  const Maintitlewidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
