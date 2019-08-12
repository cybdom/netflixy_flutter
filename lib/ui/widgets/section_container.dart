import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;
  final String sectionTitle;
  const SectionContainer(
      {Key key, @required this.child, @required this.sectionTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                sectionTitle,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(Icons.arrow_forward),
              SizedBox(width: 15.0),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          child,
        ],
      ),
    );
  }
}
