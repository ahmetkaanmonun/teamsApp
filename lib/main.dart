import 'package:flutter/material.dart';
import 'package:my_app/teamCard.dart';
import 'package:my_app/utils/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Takımlar",
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home:TeamCard(),
    );
  }
}

