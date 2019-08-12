import 'package:flutter/material.dart';
import 'package:movie_db/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  static const route = "/details_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MyHero(),
              SizedBox(
                height: 11,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "John Wick 3 - PARABELLUM",
                      style: Theme.of(context).textTheme.headline,
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "CRIME, ACTION, THRILLER",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SizedBox(height: 9.0),
                    MyRatingBar(
                      length: 5,
                      rating: 3,
                    ),
                    SizedBox(height: 13.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Year",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "2019",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Country",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "USA",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Length",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "2h 11min",
                              style: Theme.of(context).textTheme.subhead,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 13.0),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. At similique quis illum repudiandae enim odit aliquid? Dicta unde expedita consequatur corporis impedit, adipisci officia, aliquid eveniet tenetur totam, molestiae aut!",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .body1
                          .apply(fontSizeFactor: 1.2),
                    ),
                    SizedBox(height: 13.0),
                  ],
                ),
              ),
              MyScreenshots(),
              SizedBox(height: 13.0),
            ],
          ),
        ),
      ),
    );
  }
}
