import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/Application/downloads/downloads_bloc.dart';
import 'package:netflix/Application/search/search_bloc.dart';
import 'package:netflix/Core/Colors/colors.dart';
import 'package:netflix/Domain/Core/di/injectable.dart';
import 'package:netflix/Presentation/Mainpage/Widgets/screenmainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getit<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getit<SearchBloc>())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backgroundcolor,
            primaryColor: Colors.white,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 81, 16, 223)),
            useMaterial3: true,
            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
              bodyLarge: TextStyle(color: Colors.white),
            ),
          ),
          home: Screenmainpage()),
    );
  }
}
