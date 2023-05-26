import 'package:flutter/material.dart';
import 'package:companion_app/common/ui/pages/auth/login.dart';

class Swipe_03 extends StatelessWidget {
  const Swipe_03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(61, 92, 255, 1.0),
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Image.asset(
            'assets/images/Swipe_03.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
