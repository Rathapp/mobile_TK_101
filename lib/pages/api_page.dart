
import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../service/api_service.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  ApiService fakeApi = ApiService("https://fakestoreapi.com/");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F4F4),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: FutureBuilder(
              future: fakeApi.pull(endPoint: "products"),
              builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              }
              if(snapshot.hasError){
                return Text("No Internet connect");
                }
                if(snapshot.data == null){
                  return Text("No Data");
                }
               return GridView.builder(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                     childAspectRatio: 0.65
                 ),

                 itemCount: snapshot.data.length,
                 itemBuilder: (context,index){
                   final product = snapshot.data[index];
                   return Container(
                     padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),

                       color: Colors.white,
                     ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.network(product["image"],height: 150,width: double.infinity,),
                         Text(product["title"],maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight(600)),),
                         Text(product["rating"]["rate"].toString()),
                         Spacer(),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text(product["price"].toString(),style: TextStyle(color: Color(0xff093FB4),fontSize: 18,fontWeight: FontWeight(600)),),SizedBox(
                           width: 60,
                           height: 40,
                           child: ElevatedButton(
                               style: ElevatedButton.styleFrom(
                                   backgroundColor: Color(0xff093FB4),
                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                               ),
                               onPressed: (){}, child: Icon(Icons.add,color: Colors.white,size: 15,)),
                         )],),
                       ],
                     ),
                   );

                 }
               );
              },
        ),
            ),
      ));
  }
  
}
