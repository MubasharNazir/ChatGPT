import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:medecine_donation_app/screens/dashbored.dart';
import 'package:medecine_donation_app/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => LoginScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              //   Text(
              //   'Welcome to MedsApp',
              // style: TextStyle(
              //   color: Colors.white,
              // fontSize: 20,
              // fontWeight: FontWeight.w700),
              //),
              Image(
                height: 600,
                image: AssetImage('images/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
