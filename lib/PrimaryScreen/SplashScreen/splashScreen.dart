import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ticketapp/PrimaryScreen/LoginScreen/loginScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Ticket App",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
