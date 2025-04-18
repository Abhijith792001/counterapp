import 'package:counterapp/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(42, 20, 38, 1))
      ),
      home: CounterScreen(),
    );
  }
}