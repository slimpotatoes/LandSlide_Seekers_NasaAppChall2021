import 'package:flutter/material.dart';

class stats extends StatefulWidget {
  stats({Key? key}) : super(key: key);

  @override
  _statsState createState() => _statsState();
}

class _statsState extends State<stats> {
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
        title: Text("Soil Data"),
      ),
      body: Container(
        margin: EdgeInsets.all(_screenH / 35),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _screenH / 2.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 5, color: Colors.grey.shade300),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/z/soil-structure-illustration-vertical-cross-section-surface-to-bedrock-showing-relationship-regolith-208831218.jpg"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: _screenH / 25,
            ),
            Text("Soil Data")
          ],
        ),
      ),
    );
  }
}
