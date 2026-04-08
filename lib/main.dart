import 'package:flutter/material.dart';


import 'home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url ="https://img.freepik.com/free-photo/beautiful-scenery-breathtaking-sunrise-reflecting-sea_181624-16946.jpg?semt=ais_incoming&w=740&q=80";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        
        drawer: Drawer( clipBehavior: Clip.antiAlias, child: SafeArea(child: Text("Hello data")),),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(url,height: 150,width: 150,),
                Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(9),
                      gradient: LinearGradient(colors: [Colors.red,Colors.blue],begin: Alignment.topCenter,end: Alignment.bottomLeft)
                    ),
                    child: Icon(
                      Icons.favorite_border,size: 49,)
                ),
                Text("Hello flutter",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.home_filled,size: 50,color: Colors.green,),
                    Text("Welcome Flutter",style: TextStyle(fontSize: 12,color: Colors.blue,fontWeight: FontWeight(500)),)
                  ],
                ),
                Image.asset("assets/images/ddd.jpeg")
              ],
            )
        ),
        appBar: AppBar(leading: Icon(Icons.heart_broken),shadowColor: Colors.indigo,title: Text("Simple App",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.w900),),centerTitle: false,),
      )
      // const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

