import 'package:flutter/material.dart';

class MyRatingBar extends StatelessWidget {
  final int rating, length;

  const MyRatingBar({Key key, @required this.rating, @required this.length})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (f) {
          return Icon(
            f < rating ? Icons.star : Icons.star_border,
            color: f < rating ? Colors.yellow : Colors.black,
          );
        },
      ),
    );
  }
}
