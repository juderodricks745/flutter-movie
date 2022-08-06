
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie/ui/details/movie_bindings.dart';
import 'package:flutter_movie/ui/details/movie_screen.dart';
import 'package:flutter_movie/ui/people/people_binding.dart';
import 'package:flutter_movie/ui/search/search_binding.dart';
import 'package:get/get.dart';
import 'ui/people/people_screen.dart';
import 'ui/search/search_screen.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/search",
      initialBinding: SearchBinding(),
      getPages: [
        GetPage(
          name: "/search",
          page: () => SearchScreen(),
          binding: SearchBinding(),
        ),
        GetPage(
          name: "/details",
          page: () => MovieScreen(),
          binding: MovieBinding(),
        ),
        GetPage(
          name: "/people",
          page: () => PersonScreen(),
          binding: PeopleBinding(),
        )
      ],
    );
  }
}
