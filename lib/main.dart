 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SanjuronCard(),
  ));
}

class SanjuronCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sanjuron id Card"),
      ),
    );
  }
}
