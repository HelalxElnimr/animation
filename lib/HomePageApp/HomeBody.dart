import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeBody extends StatefulWidget {
  int currentIndex;
  @override
  HomeBodyState createState() => HomeBodyState();
}

class HomeBodyState extends State<HomeBody> {
  @override

  final color1 = Color(0xF0689f9c);
  final colorIconNvagation = Colors.white;
  // ignore: non_constant_identifier_names
  final double SizeIconNvagation = 35;
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(children: <Widget>[
//            new CheckboxListTile(value: value3, onChanged: Onchangedvalue3,
//                title: new Text("How are you "),
//              activeColor: Colors.deepPurple,
//              subtitle: new Text("how areeee yoouuuu"),
//              secondary: new Icon(Icons.directions_bus),
//        )
        Container(
          height: 300,
          width: double.infinity,
          child: Carousel(
            images: [
              AssetImage('images/pngw.png' ),
              AssetImage("images/png.png"),
              AssetImage("images/pngwave.png"),
            ],
            dotSize: 8,autoplay: true,dotSpacing: 30,dotColor: Colors.white24,
            dotBgColor: color1.withOpacity(0.5),dotVerticalPadding: 5,
            indicatorBgPadding: 20,boxFit: BoxFit.cover,borderRadius: true,
            overlayShadow: true,overlayShadowColors: color1,
            overlayShadowSize: 0.5,autoplayDuration: Duration(seconds: 3),
          ),
        ), //____________Slieds_______________________
        Container(padding: EdgeInsets.only(left: 20,top: 8,right: 0,bottom: 2) ,
          child: Text("Categories",style: TextStyle(fontSize: 25,color: color1)),),
        Container( height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child:
                ListTile(
                    title: Image.asset('images/laptop.png'),
                    subtitle:Container(child: Text("Laptop",textAlign: TextAlign.center,))
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child:
                ListTile(
                    title: Image.asset('images/phone.png',),
                    subtitle:Container(child: Text("Mobile",textAlign: TextAlign.center,))
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child:
                ListTile(
                    title: Image.asset('images/fix.png'),
                    subtitle:Container(child: Text("Fix",textAlign: TextAlign.center,))
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child:
                ListTile(
                    title: Image.asset('images/more.png'),
                    subtitle:Container(child: Text("More",textAlign: TextAlign.center,))
                ),
              ),
            ],
          ),
        ),
        //_____________Catogorys____________________
        Container(height: 40,padding: EdgeInsets.only(left: 20,top: 8) ,
          child: Text("News",style: TextStyle(fontSize: 25,color: color1)),),
        Container(height: 400,
          padding: EdgeInsets.only(left: 30,right: 30),
          child: GridView(padding: EdgeInsets.only(top: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: <Widget>[

              GridTile(child: Image.asset('images/unnamed.jpg'),
                header: Text("HUAWEI COMPANY",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,color: Colors.blue[600])),),
              GridTile(child: Image.asset('images/company.jpg'),
                header: Text("Shawmi COMPANY",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,color: Colors.blue[600])),),
              GridTile(child: Image.asset('images/oppo.jpg'),
                header: Text("OPPO COMPANY",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,color: Colors.blue[600])),),
            ],
          ),
        ),//_______________News________________________
      ]
      ),

    );
  }
}