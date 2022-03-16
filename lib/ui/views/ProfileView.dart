import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  final String image, username;

  const ProfileView({Key key, this.image, this.username}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState(image, username);
}

class _ProfileViewState extends State<ProfileView> {
  String image, username;

  _ProfileViewState(String image, String username) {
    this.image = image;
    this.username = username;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 190.0,
              height: 190.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(image),
                ),
              ),
            ),
            Text(
              username,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
