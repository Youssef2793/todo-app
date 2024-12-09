import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Taskcard extends StatelessWidget {
  const Taskcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: 5,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('task name',style: TextStyle(
                  fontSize: 20,
                ),),
                Text('12/8/2024'),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left:150),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.check, color: Colors.white,),
            ),
            
          ],
        ),
        
      ),
      startActionPane: ActionPane(
        motion: ScrollMotion(),
         children:[
          SlidableAction(onPressed: (value){},
          icon: Icons.delete,
          backgroundColor: Colors.red,
          ),
          
         ]),
    );
  }
}