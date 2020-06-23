import 'package:flutter/material.dart';
import 'package:snap_flutter/pages/welcome.dart';

void main() => runApp(
      new MaterialApp(
        builder: (context, child) => new SafeArea(child: child),
        title: 'Flutter Demo',
        home: WelcomePage(),
      ),
    );
