import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:help_ie/main_page.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'Help-ie App',
        home: StartSplash(),
      );
}

class StartSplash extends StatefulWidget {
  const StartSplash({Key? key}) : super(key: key);

  @override
  _StartSplashState createState() => _StartSplashState();
}

class _StartSplashState extends State<StartSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, a1, a2) => const MainPage(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, anim, a2, child) => FadeTransition(
            opacity: anim,
            child: child,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => const Scaffold(
        backgroundColor: Color.fromRGBO(118, 191, 138, 100),
        body: SplashComponent(),
      );
}

class SplashComponent extends StatelessWidget {
  const SplashComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Help-Ie',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Image(
              image: AssetImage('assets/logo_app.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            SpinKitRipple(
              color: Colors.white,
              size: 100.0,
            ),
          ],
        ),
      );
}
