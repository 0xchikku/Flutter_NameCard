import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home:Namecard(),
  ),
);

class Namecard extends StatefulWidget {
  @override
  _NamecardState createState() => _NamecardState();
}

class _NamecardState extends State<Namecard> {

  int age=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "Name card",
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        child : Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.png'),
                radius: 50.0,
              ),
            ),
            Divider(height: 60.0,),

            Text(
              "Name",
              style:TextStyle(
                color: Colors.grey[400],
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "UserName",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "Age.",
              style:TextStyle(
                color: Colors.grey[400],
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "$age",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0,),
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                   "abcd@live.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

