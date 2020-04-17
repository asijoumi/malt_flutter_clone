import 'package:flutter/widgets.dart';
import 'package:malt_flutter_clone/constants/constants.dart';

class ContentHeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  ContentHeaderWidget({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[Text(title, style: H3_STYLE)]),
          Row(children: <Widget>[Text(subtitle, style: H6_STYLE)])
        ],
      ),
    );
  }
}
