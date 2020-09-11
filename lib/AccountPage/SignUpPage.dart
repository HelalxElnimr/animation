import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reflectly_flutter_loginpage/AccountPage/LoginPage.dart';
import 'package:reflectly_flutter_loginpage/Extended/anemit.dart';
class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin {
  final int delayedAmountt = 10;
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
    // TODO: implement build
    _scale = 1 - _controller.value;
    final color1 = Color(0xF0689f9c);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            DelayedAnimation(
              child: Container(padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(fontSize: 35, color: Colors.black,
                      fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                ),
              ),
              delay: delayedAmountt  ,
            ),


            SizedBox(
              height: 10,
            ),

            Container(
              child: Text(
                "Create an account to allow",
                style: TextStyle(fontSize: 20, color: color1,
                    fontWeight: FontWeight.bold),textAlign: TextAlign.center,
              ),
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
                    ,color: color1,),hintText: 'Username ',hintStyle: TextStyle(
                      color: color1,fontWeight: FontWeight.bold
                  ),
                      border: InputBorder.none),
                ),
              ),
              delay: delayedAmountt + 200 ,
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
                  decoration: InputDecoration(icon: Icon(Icons.mail_outline
                    ,color: color1,),hintText: 'E-Mail ',hintStyle: TextStyle(
                      color: color1,fontWeight: FontWeight.bold
                  ),
                      border: InputBorder.none),
                ),
              ),
              delay: delayedAmountt +400  ,
            ),

            SizedBox(
              height: 30,
            ),
            DelayedAnimation(
              child:Container(
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
                margin: EdgeInsets.only(left: 40,right: 40),
                decoration: BoxDecoration(
                  border: Border.all(color: color1,width:3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(icon: Icon(Icons.phone_android
                    ,color: color1,),hintText: 'Phone Number ',hintStyle: TextStyle(
                      color: color1,fontWeight: FontWeight.bold
                  ),
                      border: InputBorder.none),
                ),
              ),
              delay: delayedAmountt + 600 ,
            ),

            SizedBox(
              height: 30,
            ),
            DelayedAnimation(
              child:Container(
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
              delay: delayedAmountt +800 ,
            ),

            SizedBox(
              height: 30,
            ),
            DelayedAnimation(
              child:Container(
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
                    ,color: color1,),hintText: 'Confarm PassWord',hintStyle: TextStyle(
                      color: color1,fontWeight: FontWeight.bold
                  ),
                      suffixIcon: Icon(Icons.visibility,color: color1,),
                      border: InputBorder.none),
                ),
              ),
              delay: delayedAmountt + 1000 ,
            ),

            SizedBox(
              height: 30,
            ),
            DelayedAnimation(
              child:GestureDetector(
                onTapDown: _onTapDown,
                onTapUp: _onTapUp,
                child: Transform.scale(
                    scale: _scale,
                    child:
                    Container(

                      height: 60,
                      width: 350,
                      margin: EdgeInsets.only(left: 40,right: 40),
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(color: color1,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Text("Sign Up",textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontSize: 30
                            ,fontWeight: FontWeight.bold) ,),
                    )
                ),
              ),
              delay: delayedAmountt + 1200 ,
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account ? ",style: TextStyle(color: color1
                    ,fontSize: 20),),
                GestureDetector(
                  onTap: () {Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context){
                            return LoginPage();
                          }));},
                  child: Text("Login",style: TextStyle(fontSize: 20,
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



