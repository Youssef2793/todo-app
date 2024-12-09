import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffDFECDB),
body: Container(
child: Column(
  children: [
    Row(
mainAxisAlignment: MainAxisAlignment.center,
      children:[
      Text("select language", style: TextStyle(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),),]),
      SizedBox(height: 25,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Text('English',style: TextStyle(
          fontSize: 20
        ),),
        SizedBox(width: 25,),
        Icon(Icons.check, color: Colors.green,)]),
        SizedBox(height: 10,),
         Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ Text('Arabic',style: TextStyle(
          fontSize: 20,
        ),),
        SizedBox(width: 25,),
        Icon(Icons.close, color: Colors.red,)]),
  ],
),
),
    );
    }
}