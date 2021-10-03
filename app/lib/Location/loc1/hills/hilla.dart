import 'package:flutter/material.dart';
import 'package:nasaapp/Location/Pictureupload.dart';
import 'package:page_transition/page_transition.dart';
import 'hill.dart';
import 'package:nasaapp/Location/stats.dart';
import 'hillpass.dart';

class loc1HillA extends StatefulWidget {
  loc1HillA({Key? key}) : super(key: key);

  @override
  _loc1HillAState createState() => _loc1HillAState();
}

class _loc1HillAState extends State<loc1HillA> {
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
        title: Text("Hill A"),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: Container(
                width: _screenWidth / 1,
                height: _screenH / 2.7,
                decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("ast/loc11.png"), fit: BoxFit.cover)),
              )),
          Positioned(
            left: _screenWidth / 20,
            top: _screenH / 2.4,
            child: Icon(
              Icons.warning,
              color: Colors.red,
              size: 45,
            ),
          ),
          Positioned(
              left: _screenWidth / 4.9,
              top: _screenH / 2.4,
              child: Text(
                "4 Land Slide Event Happen in \nPast Three Year",
                style: TextStyle(fontSize: _screenH / 30),
              )),
          Positioned(
              top: _screenH / 2,
              left: _screenWidth / 20,
              child: Container(
                width: _screenWidth / 1.1,
                height: _screenH / 3,
                child: Image(
                  image: AssetImage("ast/loc14.png"),
                ),
              )),
          Positioned(
              top: _screenH / 1.3,
              left: _screenWidth / 1.2,
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: const Duration(milliseconds: 500),
                            child: picUpload(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Icon(Icons.camera))),
          Positioned(
              top: _screenH / 1.3,
              left: _screenWidth / 1.6,
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: const Duration(milliseconds: 500),
                            child: stats(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Icon(Icons.bar_chart))),
          Positioned(
              left: _screenWidth / 20,
              top: _screenH / 20,
              child: GestureDetector(
                child: Container(
                  color: Colors.transparent,
                  height: _screenH / 2,
                  width: _screenWidth / 2,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: loc_news(),
                          type: PageTransitionType.rightToLeft));
                },
              )),
          Positioned(
              left: _screenWidth / 2,
              top: _screenH / 20,
              child: GestureDetector(
                child: Container(
                  color: Colors.transparent,
                  height: _screenH / 2,
                  width: _screenWidth / 2,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: loc_newsp(),
                          type: PageTransitionType.rightToLeft));
                },
              ))
        ],
      )),
    );
  }
}
