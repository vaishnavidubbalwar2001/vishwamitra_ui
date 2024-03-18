
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/createProfile.dart';
import 'package:vishwamitra_uidesign/detailsPage.dart';
import 'package:vishwamitra_uidesign/firstScreen.dart';
import 'package:vishwamitra_uidesign/langauage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
             home: deatilsPage(), 
    );
  }
}





