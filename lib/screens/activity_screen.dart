import 'package:flutter/material.dart';
import 'package:malt_flutter_clone/constants/constants.dart';
import 'package:malt_flutter_clone/models/progession_line_model.dart';
import 'package:malt_flutter_clone/widgets/avatar_button_widget.dart';
import 'package:malt_flutter_clone/widgets/card_column_widget.dart';
import 'package:malt_flutter_clone/widgets/card_line_widget.dart';
import 'package:malt_flutter_clone/widgets/card_point_widget.dart';
import 'package:malt_flutter_clone/widgets/content_header_widget.dart';

class ActivityScreen extends StatefulWidget {
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final _progessionLineData = [
    ProgessionLineModel(
        leading: "Profil complété", trealing: "Ajouter mes infos"),
    ProgessionLineModel(leading: "Missions", trealing: "Inviter mes clients"),
    ProgessionLineModel(leading: "Avis", trealing: "Demander une reco"),
    ProgessionLineModel(leading: "Total des points", trealing: "0 pts"),
  ];

  Widget _getSilverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: HEADER_HEIGHT,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Activité", style: TextStyle(fontSize: 32)),
          AvatarButtonWidget(),
        ],
      ),
    );
  }

  Widget _getProgessionsContent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20,
        ),
        child: Column(
          children: <Widget>[
                IntrinsicHeight(
                  child: Row(
                    children: <Widget>[
                      CardPointWidget(
                        childrenColumns: <Widget>[
                          Icon(Icons.favorite,
                              color: Color(0xFFFF396C), size: 50.0),
                          SizedBox(height: 20),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '7500 Pts',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: BLUE_COLOR,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ' avant le prochain niveau !',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      CardPointWidget(
                        childrenColumns: <Widget>[
                          Container(
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 5, color: const Color(0xFFF4F4F4))),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Points"),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ] +
              _progessionLineData.map(
                (progressionLine) {
                  return CardLine(
                    leading: progressionLine.leading,
                    trailing: progressionLine.trealing,
                  );
                },
              ).toList(),
        ),
      ),
    );
  }

  Widget _getStatisticsContent(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CardColumn(
                  title: "0€",
                  subtitle: "CA (HT)",
                ),
                CardColumn(
                  title: "0",
                  subtitle: "Missions",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CardColumn(
                  title: "0",
                  subtitle: "Avis",
                ),
                CardColumn(
                  title: "-",
                  subtitle: "Note global",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _getSilverBody(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: <Widget>[
            ContentHeaderWidget(
              title: "Progession",
              subtitle: "Sur les 12 derniers mois",
            ),
            _getProgessionsContent(context),
            SizedBox(height: 15),
            ContentHeaderWidget(
              title: "Statistiques",
              subtitle: "Sur les 12 derniers mois",
            ),
            _getStatisticsContent(context),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: ContainerDecoration,
        child: CustomScrollView(
          slivers: <Widget>[
            _getSilverAppBar(context),
            _getSilverBody(context),
          ],
        ),
      ),
    );
  }
}
