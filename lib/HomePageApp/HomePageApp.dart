import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reflectly_flutter_loginpage/AccountPage/LoginPage.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Home.dart';

import 'HomeBody.dart';
import 'NavigationBottunBar.dart';

class HomePageApp extends StatefulWidget {
  int currentIndex = 2;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageAppState();
  }
}

class HomePageAppState extends State<HomePageApp> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState>_scaffoldKey =GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  @override
  final color1 = Color(0xF0689f9c);
  final colorIconNvagation = Colors.white;
  final double SizeIconNvagation = 35;
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Halal",
        home:
        Directionality(textDirection: TextDirection.ltr,
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              centerTitle: true,
              title: Text("Online shop",style: TextStyle(fontSize: 30),),
              backgroundColor: color1,
              //actions: <Widget>[IconButton(icon: Icon(Icons.settings), onPressed: () {},)],
              leading: IconButton(icon: Icon(Icons.menu,size: SizeIconNvagation + 5,),
                  padding: EdgeInsets.only(left: 5) ,onPressed: (){_scaffoldKey.currentState.openDrawer();}),
              actions: <Widget>[IconButton(icon: Icon(Icons.mail,size: SizeIconNvagation),
                  padding: EdgeInsets.only(right: 25) , onPressed: (){})],
            ),
            drawer:
            Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text("Mohamed_Helal@yaho.com"),
                    accountName: Text("Mohamed Helal"),
                    currentAccountPicture: CircleAvatar(child: Icon(Icons.person_outline)),
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("images/my.jpg"),
                          fit:BoxFit.fitWidth
                      )
                  ),
                ),
                  ListTile( onTap: (){},selected: true,
                    title: Text("Prfile",style: TextStyle(color: Colors.black,fontSize: 20),),
                    leading: Icon(Icons.person,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),
                  ),
                  ListTile( onTap: (){},selected: true,
                    title: Text("Home",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                    leading: Icon(Icons.home,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),

                  ),
                  ListTile(onTap: (){},
                    title: Text("types",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    leading: Icon(Icons.category,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),

                  ),
                  ListTile(onTap: (){},
                    title: Text("Setting",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    leading: Icon(Icons.settings,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),
                  ),
                  ListTile(onTap: (){},
                    title: Text("About",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    leading: Icon(Icons.info,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),
                  ),
                  ListTile(onTap: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>LoginPage(),
                  ));},
                    title: Text("Log out",style: TextStyle(color: Colors.black,fontSize: 20,),),
                    leading: Icon(Icons.exit_to_app,color: color1,size: 40),
                    contentPadding: EdgeInsets.only(top: 20,left: 20),
                  ),
                ],
              ),
            ),
            body: Stack(
                children: <Widget>[
                  HomeP(),
                 NavigationBottunBar(_currentIndex),
            ]
          ),
          ),
        ),

    );
  }

}