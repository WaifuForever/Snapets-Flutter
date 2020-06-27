import 'package:flutter/material.dart';
import 'package:snap_flutter/pages/home.dart';
import 'package:snap_flutter/pages/welcome.dart';

class LoginPage extends StatefulWidget {
  @override
  _Screen createState() => _Screen();
}

class _Screen extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            children: [
              _backButton(),
              _title(),
              _entryField('Email id'),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _entryField(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Color(0xffdde7ed),
            filled: true,
            hintText: text,
          ),
        ),
      ],
    );
  }

  Widget _loginButton() {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        ),
      },
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        height: 30,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff5be3c5), Color(0xff4aedc9)]),
        ),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        )
      },
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Wrap(
      direction: Axis.vertical,
      spacing: -10,
      runSpacing: 0,
      children: <Widget>[
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Sna',
            style: TextStyle(
              fontFamily: 'FiraCode',
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.blueAccent,
            ),
            children: [
              TextSpan(
                  text: 'Pets',
                  style: TextStyle(
                    fontFamily: 'Reindeer',
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff438d91),
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
          child: RichText(
            textAlign: TextAlign.right,
            text: TextSpan(
              text: 'Waifu_Forever',
              style: TextStyle(
                fontFamily: 'FiraCode',
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
