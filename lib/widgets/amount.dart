import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  final int amount;
  final String title;
  final Color color;

  const Amount({
    Key key,
    this.amount,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          '$amount',
          style: TextStyle(fontSize: 18, color: color),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 10, color: color),
        ),
      ],
    );
  }
}
