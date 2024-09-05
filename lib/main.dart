import 'package:facebook/dashboard/dashboard.dart';
import 'package:facebook/facebook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(370, 650),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
         return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Facebook(flagImagePath: 'assets/france flag.jpg',),
    );
      },
    );
   
  }
}