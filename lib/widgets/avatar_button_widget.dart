import 'package:flutter/material.dart';
import 'package:malt_flutter_clone/constants/constants.dart';
import 'package:malt_flutter_clone/models/list_tile_model.dart';

class AvatarButtonWidget extends StatelessWidget {
  final _listItems = [
    ListTileModel(icon: Icons.edit, title: "Modifier mon profil"),
    ListTileModel(icon: Icons.folder, title: "Préférences de mission"),
    ListTileModel(icon: Icons.star, title: "Recommandations"),
    ListTileModel(icon: Icons.domain, title: "Paramètres entreprise"),
    ListTileModel(icon: Icons.settings, title: "Réglages de compte"),
    ListTileModel(icon: Icons.gavel, title: "Conditions générales"),
    ListTileModel(
        icon: Icons.notifications, title: "Préférences de notifications"),
    ListTileModel(icon: Icons.mail, title: "Nous contacter"),
    ListTileModel(icon: Icons.verified_user, title: "Protection des données"),
    ListTileModel(icon: Icons.power_settings_new, title: "Déconnexion"),
  ];

  Widget _getModalContent(BuildContext context) {
    return ListView(
      children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text(
                        INITIALS,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Aimen SIJOUMI",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Big Data Engineer",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ] +
          _listItems.map(
            (listItem) {
              return ListTile(
                leading: Icon(listItem.icon, color: BLUE_COLOR, size: 25.0),
                title: Text(
                  listItem.title,
                  style: TextStyle(color: BLUE_COLOR),
                ),
              );
            },
          ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (builder) {
            return FractionallySizedBox(
              heightFactor: 0.9,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 5,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: _getModalContent(context),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: CircleAvatar(
        backgroundColor: Colors.brown.shade800,
        child: Text(INITIALS, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
