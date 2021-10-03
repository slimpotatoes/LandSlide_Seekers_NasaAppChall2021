import 'package:flutter/material.dart';
import 'welcome.dart';

void main() => runApp(NASAApp());

class NASAApp extends StatelessWidget {
  const NASAApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NSAS_App",
      home: Welcome(),
    );
  }
}
