import 'package:flutter/material.dart';
import 'package:myprj1/pages/fifth.dart';
import 'package:myprj1/pages/firstpage.dart';
import 'package:myprj1/pages/fourth.dart';
import 'package:myprj1/pages/secondpage.dart';
import 'package:myprj1/pages/thirdpage.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: MyApp(),
    routes: {
      '/Firstpage': (context)=>Firstpage(),
      '/Secondpage':(context)=>Secondpage(),
      '/Thirdpage':(context)=>Thirdpage(),
      '/Fourthpage':(context)=>Fourthpage(),
      '/Fifthpage':(context)=>Fifthpage(),


},

  )
  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}): super(key:key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _currentIndex=0;

  final tabs=[
    Firstpage(),
    Secondpage(),
    Thirdpage(),
    Fourthpage(),
    Fifthpage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
    body:tabs[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    items:[
    BottomNavigationBarItem(
    icon:Icon(Icons.home),
    label: "Home",
    backgroundColor: Colors.black,
    ),

    BottomNavigationBarItem(
    icon:Icon(Icons.shopping_cart),
    label:'cart',
    backgroundColor: Colors.yellow,

    ),

    BottomNavigationBarItem(
    icon:Icon(Icons.compass_calibration),
    label: "Products",
    backgroundColor: Colors.green,
    ),

    BottomNavigationBarItem(
    icon:Icon(Icons.settings),
    label: "Home",
    backgroundColor: Colors.red,
    ),

    BottomNavigationBarItem(
    icon:Icon(Icons.person),
    label: "profile",
    backgroundColor: Colors.blue,
    ),

    ],
    onTap:(index){
    setState(() {
    _currentIndex=index;
    });
    },
    ),
    );
  }
}
