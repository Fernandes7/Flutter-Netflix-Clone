import 'package:flutter/cupertino.dart';
import 'package:netflix/Presentation/Widgets/maincard.dart';
import 'package:netflix/Presentation/Widgets/maintitle.dart';

class Mainpagescrollcarda extends StatelessWidget {
  final String title;
  const Mainpagescrollcarda({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Maintitlewidget(title: title),
        LimitedBox(
          maxHeight: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const Maincard()),
          ),
        )
      ],
    );
  }
}
