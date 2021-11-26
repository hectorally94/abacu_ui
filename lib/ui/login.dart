
import 'package:flutter/material.dart';

import 'doctor.dart';

class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);

  Color mainColor_one = const Color(0xff2E324F);
  Color mainColor_two = const Color(0xffE83F40);
  Color mainColor_tree = const Color(0xffD8DBE1);
  Color mainColor_foor = const Color(0xff303150);
  Color mainColor_five = const Color(0xffE83F40);


  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    final screenH = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor_one,
        primarySwatch: Colors.red,
      ),
      home: Scaffold(

        body:
        Container(
          width: screenWidth,
          height: screenH,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/splash.jpg'),
                fit: BoxFit.cover ),
          ),
          child: SizedBox(
            height: screenH,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[

                const Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textAlign: TextAlign.center,

                    decoration: InputDecoration(
                        prefixIcon:  Icon(Icons.email,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide:  BorderSide(
                            color: Colors.red,
                            style: BorderStyle.solid
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),

                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),

                        hintText: 'Enter valid email as ally@gmail.com'),

                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon:  Icon(Icons.password,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white),

                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusColor: Colors.red,

                        hintText: 'Enter secure password'

                    ),
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white),

                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: mainColor_one,
                      borderRadius: BorderRadius.circular(20),
                  ),

                  child: FlatButton(
                    height: 40.0,
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => const Doctor()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),

                FlatButton(
                  onPressed: (){
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                ),

                const SizedBox(
                  height: 130,
                ),
              ],
            ),

          ),
        ),

      ),
    );

  }
}