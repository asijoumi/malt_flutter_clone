import 'package:flutter/material.dart';
import 'package:malt_flutter_clone/screens/activity_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActivityScreen(),
    );
  }
}
