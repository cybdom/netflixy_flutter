import 'package:flutter/material.dart';
import 'package:movie_db/ui/widgets/widgets.dart';
import 'package:movie_db/global.dart';

class MyScreenshots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      sectionTitle: 'Screenshots',
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          // itemCount: screenshots.length,
          itemBuilder: (ctx, id) {
            return Container(
              margin: EdgeInsets.only(right: 11.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  // screenshots[id],
                  "",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
