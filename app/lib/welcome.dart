import 'package:flutter/material.dart';
import 'backGround.dart';
import 'Button.dart';
import 'location.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenWidth = MediaQuery.of(context).size.width;
    _screenH = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Page"),
      ),
      body: backGroundPic(
          transp: 0.4,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Button(
                      buttonIcon: Icons.landscape,
                      fontSize: 20,
                      pageTo: LocationChoose(),
                      title: "Choose your location",
                      titleColor: Colors.blue),
                )
              ],
            ),
          ),
          pic: "ast/slide.jpg"),
    );
  }
}
