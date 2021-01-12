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
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  'Wallet Name',
                  style: TextStyle(color: Color(0xffd2d2d2)),
                ),
              ),
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: TextField(
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 18, color: const Color(0xFFE0E0E0)),
                    filled: true,
                    fillColor: Color(0xff666666),
                    hintText: 'Enter your wallet ID'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  'Password',
                  style: TextStyle(color: Color(0xffd2d2d2)),
                ),
              ),
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelStyle:
                        TextStyle(fontSize: 18, color: const Color(0xFFE0E0E0)),
                    filled: true,
                    fillColor: Color(0xff666666),
                    hintText: 'Enter your Password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 120.0),
              child: RaisedButton(
                onPressed: () {
                  print('Login');
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                color: Color(0xff2db6d8),
              ),
            ),
            SizedBox(
              height: 20,
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
              child: Container(
                alignment: Alignment.center,
                child: Text('Don’t have a wallet?',
                  style: TextStyle(color: Color(0xffd2d2d2)),
                ),
              ),
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: RaisedButton(
                onPressed: () {
                  print('CreateWallet');
                },
                child: Text(
                  'Create a wallet here',
                  style: TextStyle(
                    color: Color(0xffd2d2d2),
                    fontSize: 14,
                  ),
                ),
                color: Color(0xff666666),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
