import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'hills/hilla.dart';
import 'package:page_transition/page_transition.dart';

class location1 extends StatefulWidget {
  location1({Key? key}) : super(key: key);

  @override
  _location1State createState() => _location1State();
}

class _location1State extends State<location1> {
  List<List> cityInfo = [
    [
      "Population",
      "500000",
    ],
    ["Area", "15000"],
    ["Location Code", "xxx,yyy"],
    ["Historical Landslide Happened", "3"]
  ];
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
        title: Text("Hamilton"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: _screenH / 2.4,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("ast/loc12.png"), fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: _screenH / 4,
                      left: _screenWidth / 1.3,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: const Duration(milliseconds: 500),
                                  child: loc1HillA(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(_screenWidth / 30,
                              _screenH / 45, _screenWidth / 30, _screenH / 45),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade600),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Hill B"),
                        ),
                      )),
                  Positioned(
                      top: _screenH / 4,
                      left: _screenWidth / 30,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: const Duration(milliseconds: 500),
                                  child: loc1HillA(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(_screenWidth / 30,
                              _screenH / 45, _screenWidth / 30, _screenH / 45),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade600),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Hill C"),
                        ),
                      )),
                  Positioned(
                      top: _screenH / 16,
                      left: _screenWidth / 2.4,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  duration: const Duration(milliseconds: 500),
                                  child: loc1HillA(),
                                  type: PageTransitionType.rightToLeft));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(_screenWidth / 30,
                              _screenH / 45, _screenWidth / 30, _screenH / 45),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              border: Border.all(
                                  width: 5, color: Colors.grey.shade600),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Hill A"),
                        ),
                      ))
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(_screenWidth / 40, _screenH / 40,
                    _screenWidth / 2.5, _screenH / 40),
                padding: EdgeInsets.fromLTRB(_screenWidth / 60, _screenH / 40,
                    _screenWidth / 10, _screenH / 40),
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "City Info",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: _screenH / 30),
                )),
            Container(
              margin: EdgeInsets.only(left: _screenWidth / 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var i = 0; i < cityInfo.length; i++)
                    Text(
                      cityInfo[i][0] + " : " + cityInfo[i][1],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "coms"),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
