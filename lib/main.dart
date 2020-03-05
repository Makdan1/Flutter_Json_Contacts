import 'package:flutter/material.dart';
import 'package:uche_contacts/listStateAndLGA.dart';
import 'home.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListOfState(),
    routes: <String,WidgetBuilder>{
      "/HomePage": (BuildContext context) => new HomePage(),
    },
    );
  }
}
