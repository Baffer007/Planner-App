import 'package:flutter/material.dart';

class PlannerPage extends StatelessWidget {
  const PlannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("My tasks",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
        ),

        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal,
          child: Icon(Icons.calendar_today_outlined,color: Colors.white,),
        ),
      ],
    );
  }
}
