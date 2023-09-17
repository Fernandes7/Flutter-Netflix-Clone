import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (BuildContext context, int index, Widget? _) {
          return BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                indexChangeNotifier.value = value;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              selectedItemColor: const Color.fromARGB(255, 255, 66, 66),
              unselectedItemColor: const Color.fromARGB(255, 188, 186, 186),
              selectedLabelStyle: const TextStyle(fontSize: 10),
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections), label: "New & Hot"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions), label: "Fast & Laugh"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_off_rounded), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.arrow_downward_outlined),
                    label: "Downloads"),
              ]);
        });
  }
}
