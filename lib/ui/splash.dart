
import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
void main() {

  runApp(MaterialApp(
    home: Splash(),

  ));
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();

}
class _SplashState extends State<Splash> {

  Color mainColor_one = const Color(0xff2E324F);
  Color mainColor_two = const Color(0xffE83F40);
  Color mainColor_tree = const Color(0xffD8DBE1);
  Color mainColor_foor =  const Color(0xff2E324D);
  Color mainColor_five = const Color(0xffE83F40);

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                 Login()

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      //backgroundColor: mainColor_one,
    body: Container(
        width: screenWidth,
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('asset/image/splash.jpg'),
    fit: BoxFit.cover
    ),
    )
    ));
  }
}