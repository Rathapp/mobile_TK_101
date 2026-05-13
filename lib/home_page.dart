
import 'package:fluter_everning_wed/Screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'Screen/favorite_screen.dart';
import 'Screen/profile_screen.dart';
import 'Screen/travel_screen.dart';
class HomePage  extends StatefulWidget {


  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url ="https://img.freepik.com/free-photo/beautiful-scenery-breathtaking-sunrise-reflecting-sea_181624-16946.jpg?semt=ais_incoming&w=740&q=80";
  final List<Widget> _screen = [HomeScreen(),FavoriteScreen(),TravelScreen(),ProfileScreen()];
 late int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      endDrawer: Drawer(),
      body: _screen[_currentIndex],
      // _buildBody(),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: buildFloatingActionButton(),

    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: Colors.green,
      onPressed: (){},child: Icon(Icons.add,color: Colors.white),);
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black26,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

        backgroundColor: Colors.white,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: _currentIndex == 1 ? Icon(Icons.favorite):Icon(Icons.favorite_outline),label: "Favorite"),

          BottomNavigationBarItem(icon: Icon(Icons.card_travel_outlined),label: "Travel"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
    ]
  );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.green,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite),),
            SizedBox(width: 50,),
            IconButton(onPressed: (){}, icon: Icon(Icons.card_travel)),
            IconButton(onPressed: (){}, icon: Icon(Icons.person_off_rounded)),


      ]) ,
    );
  }

  Drawer buildDrawer() {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: SafeArea(
          child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(image: AssetImage("assets/images/ddd.jpeg",),fit: BoxFit.cover),
                      ),
                    ),
                    // Icon(Icons.eighteen_mp_rounded),
                    SizedBox(width: 30,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Hello, Ratha",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text("View profile")],)
                  ],),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {},

                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("setting"),
                  onTap: () {},

                ),
                ListTile(
                  leading: Icon(Icons.wallet),
                  title: Text("My Wallet"),
                  onTap: () {},

                ),
        ])


    )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Flutter app"),
      backgroundColor: Colors.green,
      // centerTitle: true,
      // leading: Icon(Icons.hub_outlined,size: 30,color: Colors.indigoAccent,),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.eighteen_mp_rounded,size: 30,color: Colors.indigoAccent,))
        ,
        SizedBox(width: 20,),
        Icon(Icons.favorite_border),
        SizedBox(width: 20,),
        Icon(Icons.person_2),
        SizedBox(width: 20,)
      ],
    );
  }






}
