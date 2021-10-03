import 'package:flutter/material.dart';

class picUpload extends StatefulWidget {
  picUpload({Key? key}) : super(key: key);

  @override
  _picUploadState createState() => _picUploadState();
}

class _picUploadState extends State<picUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Upload"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 500,
          child: Image(image: AssetImage("ast/loc15.png")),
        ),
      ),
    );
  }
}
