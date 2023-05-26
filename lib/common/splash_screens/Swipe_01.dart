import 'package:flutter/material.dart';
import 'package:companion_app/common/splash_screens/Swipe_02.dart';

class Swipe_01 extends StatelessWidget {
  const Swipe_01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Swipe_02()),
            );
          },
          child: Image.asset(
            'assets/images/Swipe_01.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
