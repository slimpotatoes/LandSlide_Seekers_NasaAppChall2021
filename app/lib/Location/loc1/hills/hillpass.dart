import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/rendering.dart';
import 'news.dart';
import 'package:nasaapp/Location/Pictureupload.dart';

class loc_newsp extends StatefulWidget {
  loc_newsp({Key? key}) : super(key: key);

  @override
  _loc_newspState createState() => _loc_newspState();
}

class _loc_newspState extends State<loc_newsp> {
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
                "Weather: Sunny \nHumidity： 0.4\nRamp Angle: Low\nMountain Structure: Rigid\nRock Fall Protected: No"),
            Text(
              "Good to go",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
                      image: NetworkImage(
                          "https://images.thestar.com/cpOo3BOZO3qX7_gre8yctjNZ3Bk=/1086x688/smart/filters:cb(2700061000)/https://www.thespec.com/content/dam/thespec/news/hamilton-region/2016/02/24/falling-rock-closes-sherman-access/B822371731Z.1_20160224141409_000_GIU1KR0J2.2_Gallery.jpg"),
                      fit: BoxFit.cover)),
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
