 import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SanjuronCard(),
  ));
}

class SanjuronCard extends StatefulWidget {
  @override
  _SanjuronCardState createState() => _SanjuronCardState();
}

class _SanjuronCardState extends State<SanjuronCard> {

  int sanjuronLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Sanjuron id Card"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
        elevation: 0.0, // pour supprimer l'effet d'ombre
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sanjuronLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/thumb.png'),
                radius: 35.0,
              ),
            ),
            Divider(
              height:60.0,
              color: Colors.amberAccent[200],
            ),
            Text(
              'NOM',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Sanjuron',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'NIVEAU ACTUEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$sanjuronLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(height: 30.0),
                Text(
                    "sanjuron@exemple.com",
                    style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    ),
                  )
              ]
            ),
          ],
        ),
      ),
    );
  }
}
