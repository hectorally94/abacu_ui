import 'package:flutter/material.dart';
import 'package:abacusapp/ui/doctor.dart';
class Login extends StatefulWidget {
  const Login({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  Color mainColor_one = const Color(0xff2E324F);
  Color mainColor_two = const Color(0xffE83F40);
  Color mainColor_tree = const Color(0xffD8DBE1);
  Color mainColor_foor = const Color(0xff303150);
  Color mainColor_five = const Color(0xffE83F40);


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor_two,
        primaryColorDark: mainColor_five,
      ),
      home: Scaffold(
        body:
        Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/splash.jpg'),
                fit: BoxFit.cover ),
          ),

          child:
          Container (
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.red[800]!.withOpacity(0.7),
                    Colors.black.withOpacity(0.5),
                    Colors.blue[800]!.withOpacity(0.7)
                  ]
              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('Smile ;)', style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 64.0,
                          fontWeight: FontWeight.bold ),),
                    ],
                  ),
                ),

                MaterialButton(
                  onPressed: () {
                  },
                  child: const Text('Login',
                    style: TextStyle( fontSize: 16 ),),
                  color: Colors.white,
                  minWidth: screenWidth-64,
                  padding: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),


              ],
            ),
          ),
        )

      ),
    );


  }
}