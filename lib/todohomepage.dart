import 'package:flutter/material.dart';
import 'package:todo_app/widgets/bottomsheet.dart';
import 'package:todo_app/widgets/list.dart';
import 'package:todo_app/widgets/settings.dart';

class TodoHome extends StatefulWidget {
static const String routname='route';

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
List <Widget> MyFragments=[Listtask(),Settings()];

int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('todo app', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
      ),
      bottomNavigationBar: BottomAppBar(
      notchMargin: 8,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){
           currentindex=0;
            setState(() {
              
            });
          }, icon: Icon(Icons.list)),
           IconButton(onPressed: (){
          currentindex=1;
            setState(() {
              
            });
           }, icon: Icon(Icons.settings)),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(
          side: BorderSide(width: 3,color: Colors.white),
        ),
        onPressed: (){
          showButtomSheet();
        },
      child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: getbody(currentindex),
      ),  
       );
  }

  Widget getbody(int index){
    if (index==0){
      return MyFragments[index];
    }else if(index==1){
      return MyFragments[index];
    }else{
      return MyFragments[index];
    }
  }
  void showButtomSheet(){
    showModalBottomSheet(
      context: context,
       builder: (context){
return buttomsheet();
    });
  }
}