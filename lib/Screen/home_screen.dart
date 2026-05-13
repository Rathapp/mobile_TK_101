import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildBody();
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
}
