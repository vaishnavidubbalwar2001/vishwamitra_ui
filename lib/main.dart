
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vishwamitra_uidesign/createProfile.dart';
import 'package:vishwamitra_uidesign/detailsPage.dart';
import 'package:vishwamitra_uidesign/firstScreen.dart';
import 'package:vishwamitra_uidesign/homeScreen.dart';
import 'package:vishwamitra_uidesign/langauage.dart';




// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//  builder: (_ , child) {
//         return
//       GetMaterialApp(
//         debugShowCheckedModeBanner: false,
//                home: LanguageSelection(), 
//       );
//  }
//     );
//   }
// }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
 builder: (_ , child) {
        return
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
               home: HomePage(), 
      );
 }
    );
  }
}


