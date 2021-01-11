import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff444444),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/logo.png'),
              ],
            ),
            SizedBox(
              height: 21.22,
            ),
            Container(
              width: 414,
              height: 7,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff262626),
                  Color(0x444444),
                ],
              )),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child:
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                    'Wallet Name',
                  style: TextStyle(color: Color(0xffd2d2d2)),
                ),
              ),
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle:
                      TextStyle(fontSize: 18, color: const Color(0xFFE0E0E0)),
                  filled: true,
                  fillColor: Color(0xff666666),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child:
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'Password',
                  style: TextStyle(color: Color(0xffd2d2d2)),
                ),
              ),
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle:
                      TextStyle(fontSize: 18, color: const Color(0xFFE0E0E0)),
                  filled: true,
                  fillColor: Color(0xff666666),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
