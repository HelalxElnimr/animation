import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import '../Extended/anemit.dart';
import 'LoginPage.dart';
import 'SignUpPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
        return HomePageState();
  }
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final color2 = Color(0xF0689f9c);
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: color2,
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 10,
                ),
                AvatarGlow(
                  endRadius: 150,
                  duration: Duration(seconds: 2),
                  glowColor: Colors.white24,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: 50.0,
                      )),
                ),
                DelayedAnimation(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60.0,
                        color: color),
                  ),
                  delay: delayedAmount + 1000,
                ),
//                DelayedAnimation(
//                  child: Text(
//                    "I'm Reflectly",
//                    style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                        fontSize: 35.0,
//                        color: color),
//                  ),
//                  delay: delayedAmount + 2000,
//                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAnimation(
                  child: Text(
                    "We are happy",
                    style: TextStyle(fontSize: 25.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                DelayedAnimation(
                  child: Text(
                    "that you are here",
                    style: TextStyle(fontSize: 25.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                SizedBox(
                  height: 50.0,
                ),
                DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>LoginPage(),
                    ));},
                    onTapDown: _onTapDown,
                    onTapUp: _onTapUp,
                    child: Transform.scale(
                      scale: _scale,
                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xF0689f9c),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  delay: delayedAmount + 4000,
                ),
                SizedBox(height: 50.0,),
                DelayedAnimation(
                  child: Text(
                    "I don't have An Account".toUpperCase(),
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  delay: delayedAmount + 5000,
                ),
                SizedBox(
                  height: 50.0,
                ),

                DelayedAnimation(
                  child: GestureDetector(
                    onTap: () {Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>SignUpPage(),
                    ));},
                      child: Container(
                        height: 60,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 5),
                          borderRadius: BorderRadius.circular(100.0),
                          color: color2,
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                    ),
                  ),

                  delay: delayedAmount + 4000,
                ),

              ],
            ),
          )
//  Column(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: <Widget>[
//     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
//     SizedBox(
//       height: 20.0,
//     ),
//      Center(

//   ),
//   ],

// ),
      ),
    );
  }



  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
