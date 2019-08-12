import 'package:flutter/material.dart';
import 'package:movie_db/ui/widgets/widgets.dart';
import '../../global.dart';

class HomeScreen extends StatelessWidget {
  static const route = "/";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.black), onPressed: () {})
          ],
          leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
          title: Text(
            "Netflixy",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: PageView.builder(
                  itemCount: movieList.length,
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
                                movieList[id]['img'],
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
                                "${movieList[id]['title']}",
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
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                height: 61,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, id) {
                    print(id);
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(color: Colors.red, blurRadius: 2.5)
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 2.5,
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 7, vertical: 5.0),
                      child: Text(
                        "${categories[id]}",
                        style: Theme.of(context).textTheme.headline.apply(
                              color: Colors.white,
                            ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SectionContainer(
                sectionTitle: "My List",
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieList.length,
                    itemBuilder: (ctx, id) {
                      return MovieContainer(id: id);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SectionContainer(
                sectionTitle: "Popular on Netflixy",
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieList.length,
                    itemBuilder: (ctx, id) {
                      return MovieContainer(id: id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
