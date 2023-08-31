import 'package:flutter/material.dart';
import 'package:my_project/loginpage.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                });
              }, // Image tapped
              child: Image.asset(
                'assets/images/logo1.png',
                width: 110.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
