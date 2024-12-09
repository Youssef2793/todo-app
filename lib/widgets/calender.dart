import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.blueGrey,
        dayColor: Colors.blue,
        activeDayColor: Colors.white,
        activeBackgroundDayColor: Colors.redAccent[100],
        
        selectableDayPredicate: (date) => date.day != 23,
        locale: 'en_ISO',
      ) ,
    );
  }
}