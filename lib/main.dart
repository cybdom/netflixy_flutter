import 'package:flutter/material.dart';
import 'package:movie_db/api.dart';
import 'ui/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Raleway'),
      // initialRoute: '/',
      // routes: {
      //   '/': (ctx) => HomeScreen(),
      //   VideoApp.route: (ctx) => VideoApp(),
      // },
      home: Scaffold(
          body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Api().getFeaturedMovies();
                Api().getGenreList();
              },
              child: Text("test"))
        ],
      )),
    );
  }
}
