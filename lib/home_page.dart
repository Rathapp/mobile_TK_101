
import 'package:flutter/material.dart';
class HomePage  extends StatelessWidget {

  final url ="https://img.freepik.com/free-photo/beautiful-scenery-breathtaking-sunrise-reflecting-sea_181624-16946.jpg?semt=ais_incoming&w=740&q=80";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      endDrawer: Drawer(),
      body: _buildBody(),
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

        backgroundColor: Colors.green,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),

          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Travel"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
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

  Widget _buildBody() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(height: 20,),
        Text("Hello flutter",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,)),
        // Image.network(url,height: 350,width: 350,),
        SizedBox(height: 30,),
        _buildStack(),

        buildRow(),
        Spacer(),
        Image.asset("assets/images/ddd.jpeg")
      ],
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(Icons.home_filled,size: 50,color: Colors.green,),
        Text("Welcome Flutter",style: TextStyle(fontSize: 12,color: Colors.blue,fontWeight: FontWeight(500)),)
      ],
    );
  }

  Widget _buildStack() {
    return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(9),
                // gradient: LinearGradient(colors: [Colors.red,Colors.blue],begin: Alignment.topCenter,end: Alignment.bottomLeft)
              ),
              child: Icon(
                Icons.notification_add_outlined,size: 49,)
          ),
          Positioned(
              top: -5,
              right: -5,
              child: Container(
                padding: EdgeInsets.all(5),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),),

                child: Text("10",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight(600)),),
              )
          )
        ]

    );
  }
}
