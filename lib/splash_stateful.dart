import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_sep/loginpage.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Splash2(),));
}

class Splash2 extends StatefulWidget {
  @override
  State<Splash2> createState() => _Splash2State();

}

class _Splash2State extends State<Splash2> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: Center(
     child: //Lottie.asset('assets/animation/Animation - 1699385393847.json', height:150, width: 200),
      Lottie.network("https://lottie.host/2799778c-ac3c-4f4e-a72a-d33d0a50f1cd/xTvIHf3BgM.json",height: 350,width: 350)
  ),
    );
}
}