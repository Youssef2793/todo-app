import 'package:flutter/material.dart';

class buttomsheet extends StatelessWidget {
  const buttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      Text('Add new Task'),
      SizedBox(height: 10,),
      Form(child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "task name",
          ),
        )
      ],
      )),
      SizedBox(height: 20,),
       Form(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "description name",
          ),
        ),
        SizedBox(height: 20,),
      ],
      )),
      Text('select the date'),
      SizedBox(height: 10,),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        onPressed: (){}, child: Text('set task',style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),)),

        ],
      ),
    );
  }
}