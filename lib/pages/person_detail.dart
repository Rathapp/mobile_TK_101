import 'package:fluter_everning_wed/models/person.dart';
import 'package:flutter/material.dart';
class PersonDetail extends StatelessWidget {
  const PersonDetail(this.ps,{super.key});
  final Person ps;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(ps.image),
              Text(ps.name),
              Text(ps.age.toString()),
              Text(ps.job),
            ],
          ),
        ),
      ),
    );
  }
}
