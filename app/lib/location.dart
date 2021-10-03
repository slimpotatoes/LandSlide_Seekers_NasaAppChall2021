import 'package:flutter/material.dart';
import 'Button.dart';

import 'Location/loc1/hamilton.dart';
import 'Location/location2.dart';
import 'package:nasaapp/Location/location3.dart';

class LocationChoose extends StatefulWidget {
  LocationChoose({Key? key}) : super(key: key);

  @override
  _LocationChooseState createState() => _LocationChooseState();
}

class _LocationChooseState extends State<LocationChoose> {
  List<String> loc = ['Loc 1'];
  List<Widget> pageto = [location1()];
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
    String DropDownValue = "Loc 1";
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose your location"),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.fromLTRB(_screenWidth / 15, _screenH / 20,
                _screenWidth / 10, _screenH / 20),
            width: double.infinity,
            child: DropdownButton(
              value: DropDownValue,
              icon: Icon(Icons.search),
              hint: Text("Choose the location around you"),
              onChanged: (String? newValue) {
                setState(() {
                  DropDownValue = newValue!;
                });
              },
              items: loc.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: _screenH / 20,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(_screenWidth / 25, _screenH / 20,
                  _screenWidth / 2.5, _screenH / 20),
              padding: EdgeInsets.fromLTRB(_screenWidth / 15, _screenH / 20,
                  _screenWidth / 10, _screenH / 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(25)),
              child: Text("Recommend location")),
          Row(
            children: [
              SizedBox(
                width: _screenWidth / 20,
              ),
              for (var i = 0; i < loc.length; i++)
                Button(
                    fontSize: 13,
                    buttonIcon: Icons.gps_fixed,
                    pageTo: pageto[i],
                    title: loc[i],
                    titleColor: Colors.blue)
            ],
          )
        ]));
  }
}
