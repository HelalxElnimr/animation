import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reflectly_flutter_loginpage/AccountPage/SignUpPage.dart';
import 'package:reflectly_flutter_loginpage/Extended/anemit.dart';
import 'package:reflectly_flutter_loginpage/HomePageApp/Diffult.dart';
import 'package:reflectly_flutter_loginpage/HomePageApp/HomePageApp.dart';
import 'package:reflectly_flutter_loginpage/HomePageApp/NavigationBottunBar.dart';
class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final int delayedAmount = 300;  double _scale;
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
    // TODO: implement build
    _scale = 1 - _controller.value;
    final color1 = Color(0xF0689f9c);
    String text;
      return MaterialApp(
        debugShowCheckedModeBanner: false,

        home:
        Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomPadding: false,
          body: Column(
            children: <Widget>[
              DelayedAnimation(
                child: Container(
                  height: 280,width: 500,padding: EdgeInsets.only(top: 50,left: 10),
                  child: Image.asset('images/wellcomback.png',),
                ),
                delay: delayedAmount - 250 ,
              ),
              DelayedAnimation(
                child: Container(padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Welcom Back !",
                    style: TextStyle(fontSize: 35, color: Colors.black,
                        fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                  ),
                ),
                delay: delayedAmount -100 ,
              ),
              DelayedAnimation(
                child: Container(
                  child: Text(
                    "Login to your account to allow",
                    style: TextStyle(fontSize: 20, color: color1,
                        fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                  ),
                ),
                delay: delayedAmount -100 ,
              ),
              SizedBox(
                height: 30,
              ),
              DelayedAnimation(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
                  margin: EdgeInsets.only(left: 40,right: 40),
                  decoration: BoxDecoration(
                    border: Border.all(color: color1,width:3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(icon: Icon(Icons.person
                      ,color: color1,),hintText: 'Username or Phone',hintStyle: TextStyle(
                        color: color1,fontWeight: FontWeight.bold
                    ),
                        border: InputBorder.none),
                  ),
                ),
                delay: delayedAmount ,
              ),

              SizedBox(
                height: 30,
              ),
              DelayedAnimation(
                child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
                  margin: EdgeInsets.only(left: 40,right: 40),
                  decoration: BoxDecoration(
                    border: Border.all(color: color1,width:3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(icon: Icon(Icons.lock_outline
                      ,color: color1,),hintText: 'PassWord',hintStyle: TextStyle(
                        color: color1,fontWeight: FontWeight.bold
                    ),
                        suffixIcon: Icon(Icons.visibility,color: color1,),
                        border: InputBorder.none),
                  ),
                ),
                delay: delayedAmount ,
              ),

              SizedBox(
                height: 30,
              ),
              DelayedAnimation(
                child: GestureDetector(
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  child: Transform.scale(
                    scale: _scale,
                    child:GestureDetector(
                        onTap: () {Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>HomePageApp(),
                        ));},
                        child :
                        Container(
                          height: 60,
                          width: 400,
                          margin: EdgeInsets.only(left: 40,right: 40),
                          padding: EdgeInsets.only(top: 10),
                           decoration: BoxDecoration(color: color1,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text("Login",textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,fontSize: 30
                                ,fontWeight: FontWeight.bold) ,),
                        )
                    ),
                  ),
                ),
                delay: delayedAmount + 300 ,
              ),
              SizedBox(
                height: 20,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an Account ?  ",style: TextStyle(color: color1
                    ,fontSize: 20),),
                    GestureDetector(
                      onTap: () {Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>SignUpPage(),
                      ));},
                      child: Text("Sign up",style: TextStyle(fontSize: 20,
                        color: color1,fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                )
            ],
          ),
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



