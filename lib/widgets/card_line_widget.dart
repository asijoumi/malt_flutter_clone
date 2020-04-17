import 'package:flutter/material.dart';
import 'package:malt_flutter_clone/constants/constants.dart';

class CardLine extends StatelessWidget {
  final String leading;
  final String trailing;

  CardLine({
    @required this.leading,
    @required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              leading,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              trailing,
              style: TextStyle(
                fontSize: 16,
                color: BLUE_COLOR,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
