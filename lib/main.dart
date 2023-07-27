import 'package:flutter/material.dart';
import 'package:movies/home.dart';
import 'package:movies/movie_details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routeName: (_) => Home(),
        MovieDetails.routeName: (_) => MovieDetails(),
      },
      initialRoute: Home.routeName,
    );
  }
}
