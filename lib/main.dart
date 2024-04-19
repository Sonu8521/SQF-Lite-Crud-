import 'package:flutter/material.dart';
import 'Widgets/DashBoard.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "dashboard",
    routes: {
      'dashboard' : (context) => const DashBoard(),
    },
  ));

}

