import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/rendering.dart';
import 'news.dart';
import 'package:nasaapp/Location/Pictureupload.dart';

class loc_news extends StatefulWidget {
  loc_news({Key? key}) : super(key: key);

  @override
  _loc_newsState createState() => _loc_newsState();
}

class _loc_newsState extends State<loc_news> {
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
        title: Text("Sherman Access"),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(_screenH / 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Regional Information",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
                "Weather: Rainy \nHumidity： 0.9\nRamp Angle: High\nMountain Structure: loose\nRock Fall Protected: No"),
            Text(
              "Suggestion: Stay Away from it",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Historical Event",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              width: double.infinity,
              height: _screenH / 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5, color: Colors.grey.shade300),
                  image: DecorationImage(
                      image: AssetImage("ast/loc13.png"), fit: BoxFit.cover)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: news(),
                          type: PageTransitionType.rightToLeft));
                },
              ),
            ),
            Text(
              "Pictures",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            FloatingActionButton(
                child: Icon(Icons.camera),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: picUpload(),
                          type: PageTransitionType.rightToLeft));
                })
          ],
        ),
      )),
    );
  }
}
