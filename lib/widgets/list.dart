
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/calender.dart';
import 'package:todo_app/widgets/taskCard.dart';

class Listtask extends StatelessWidget {
  const Listtask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffDFECDB),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15),
              ),
              child: Calender()),
                 Expanded(
                   child: ListView.builder(
                                 itemCount: 8 ,
                                 itemBuilder: (context,index){
                                return Taskcard();
                                 }),
                 ),
          ],
        )
      );
  }
}