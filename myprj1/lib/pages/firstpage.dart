import 'package:flutter/material.dart';
class  Firstpage extends StatelessWidget {
  Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      toolbarHeight:100,
      title: Text('FIRSTPAGE',style: TextStyle(color:Colors.white),),

      backgroundColor:Colors.black,),
    body:Center(
      child:ListView(
        //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment:CrossAxisAlignment.center,
        children:[
          Container(
            width: 200,
            height:200,
            color:Colors.limeAccent,
            child:Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                    "hello developers",style:TextStyle(backgroundColor:Colors.pink,color:Colors.black)),
                Text("flutter",
                  style: TextStyle(color:Colors.green,fontSize:35,fontWeight:FontWeight.w900),
                ),
              ],
            )
            ),
          ),
          Container(
            width: 200,
            height:200,
            color:Colors.deepPurple,
            child:Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                    "hello developers",style:TextStyle(color:Colors.black)),
                Text("flutter",
                  style: TextStyle(color:Colors.green,fontSize:35,fontWeight:FontWeight.w900),
                ),
              ],
            )
            ),
          ),
          Container(
            width: 200,
            height:200,
            color:Colors.purple,
            child:Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                    "hello developers",style:TextStyle(color:Colors.black)),
                Text("flutter",
                  style: TextStyle(color:Colors.green,fontSize:35,fontWeight:FontWeight.w900),
                ),
              ],
            )
            ),
          ),
          Container(
            width: 200,
            height:200,
            color:Colors.deepOrange,
            child:Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text(
                    "hello developers",style:TextStyle(color:Colors.black)),
                Text("flutter",
                  style: TextStyle(color:Colors.green,fontSize:35,fontWeight:FontWeight.w900),
                ),
              ],
            )
            ),
          ),
        ],
      ),
    ),
    );
  }
}
