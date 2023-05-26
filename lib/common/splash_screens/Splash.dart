import 'package:flutter/material.dart';
import 'package:companion_app/common/splash_screens/Swipe_01.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(61, 92, 255, 1.0),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Swipe_01()),
            );
          },
          child: Image.asset(
            'assets/images/Splash.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
