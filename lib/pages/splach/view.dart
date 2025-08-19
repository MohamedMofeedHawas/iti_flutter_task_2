import 'dart:async';

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:iti_flutter_task_2/pages/profile_page/view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (route) => ProfilePage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: SizedBox(
            width: 320,
            height: 300,
            child: Jello(
              duration: Duration(seconds: 5),

              child: HeartBeat(
                duration: Duration(seconds: 5),

                child: FlipInX(
                  duration: Duration(seconds: 5),
                  child: RubberBand(
                    duration: Duration(seconds: 5),
                    child: ElasticInRight(
                      duration: Duration(seconds: 5),
                      child: Image.asset("assets/images/task_image.png"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
