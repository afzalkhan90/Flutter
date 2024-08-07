import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget
{
   @override
   State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 5), ()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MyHomePage(title: "Nurul Quran Academy"),
      ),);
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container
        (
        color: Colors.black,
        child: Center(
          child: Text(
            "NQA",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 55,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
