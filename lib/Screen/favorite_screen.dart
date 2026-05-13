import 'package:flutter/material.dart';

import '../data/people.dart';
import '../models/person.dart';
import '../pages/person_detail.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15,vertical: 10),
    child: ListView.builder(
      itemCount: people.length,
      itemBuilder: (BuildContext context, int index) {
        final person = people[index];
        return buildListTile(image: person["image"], name: person["name"], subTitle: person["job"],
            func:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PersonDetail(Person.fromJson(person))));
            });
      },
    )

    );
  }

  ListTile buildListTile({required String image,required String name,required String subTitle, Function? func}) {
    return ListTile(
        onTap: func as void Function()?,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
        title: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight(500)),),
        subtitle: Text(subTitle),);

  }
}
