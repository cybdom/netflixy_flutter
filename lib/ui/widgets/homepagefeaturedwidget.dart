import 'package:flutter/material.dart';
import 'package:movie_db/models/featuredmoviemodel.dart';
import 'package:movie_db/global.dart';
class HomePageFeaturedWidget extends StatelessWidget {
  final AsyncSnapshot<List<FeaturedMovieModel>> snapshot;
  const HomePageFeaturedWidget({
    Key key,
    this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (ctx, id) {
        return Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.grey[400],
                  offset: Offset(0, 3))
            ],
          ),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.network(
                    // movieList[id]['img'],
                    getPosterImage(snapshot.data[id].poster_path),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.black45,
                  ),
                  child: Text(
                    "${snapshot.data[id].original_title}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
