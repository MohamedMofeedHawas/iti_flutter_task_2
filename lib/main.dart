import 'package:flutter/material.dart';
import 'package:iti_flutter_task_2/pages/splach/view.dart';

void main() => runApp(MyAppScreen());

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      appBarTheme: AppBarTheme(titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
          color: Colors.black87,
      )),
    ),
        debugShowCheckedModeBanner: false, home: Scaffold(
body: SplashPage(
),
    ));
  }
}
