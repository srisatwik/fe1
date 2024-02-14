import 'package:flutter/material.dart';
class  Thirdpage extends StatefulWidget {
  Thirdpage({super.key});
  @override
  State<Thirdpage> createState() => _ThirdpageState();
}
class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              GestureDetector(
                onTap:() {
                  print("tapped here hurrayyyy");
                },
                child:Icon(
                  Icons.add,
                  color: Colors.red,),),

              IconButton(
                icon: Icon(Icons.abc_outlined,color: Colors.pink,),
                onPressed: (){
                  print("pressed ICON button");
                },
                iconSize:40.0,

              ),

              TextButton(
                  onPressed: (){
                    print("pressed Text button");
                  },
                  child:Text(
                    "ABC",
                    style:TextStyle(fontSize: 40,color:Colors.white),
                  )
              ),

              ElevatedButton(
                onPressed: (){
                  print("pressed Elevated button");
                },
                child:Text("click here",style: TextStyle(color:Colors.green),),

              ),
              OutlinedButton(
                onPressed: (){
                  print("pressed outlined button");
                },
                child:Text("click here",style: TextStyle(color:Colors.red),),

              )

            ],
          ),
        ),
      ),
      drawer:Drawer(
        backgroundColor: Colors.deepPurple[100],
        child:Column(
          children:[
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size:28,
            )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Firstpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("shoppingcart"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Secondpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.stairs),
              title: Text("products"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Thirdpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Fourthpage');
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Fifthpage');
              },
            )
        ],)
      )
    );
  }
}
