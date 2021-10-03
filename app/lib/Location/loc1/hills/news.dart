import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class news extends StatefulWidget {
  news({Key? key}) : super(key: key);

  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
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
        title: Text("Downbound lanes of Sherman \nAccess East closed "),
      ),
      body: Container(
        margin: EdgeInsets.all(_screenH / 35),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _screenH / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5, color: Colors.grey.shade300),
                  image: DecorationImage(
                      image: AssetImage("ast/loc13.png"), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: _screenH / 20,
            ),
            Text("By The Hamilton Spectator --March 2017",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _screenH / 30,
                )),
            SizedBox(
              height: _screenH / 50,
            ),
            Text(
                "City crews expect to reopen the downbound lane of the Sherman Access east Thursday morning that has been closed most of today because of a rock slide")
          ],
        ),
      ),
    );
  }
}
