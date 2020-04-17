import 'package:flutter/material.dart';

class CardPointWidget extends StatelessWidget {
  final List<Widget> childrenColumns;

  CardPointWidget({@required this.childrenColumns});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(
          bottom: 10,
          right: 5,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: childrenColumns,
          ),
        ),
      ),
    );
  }
}
