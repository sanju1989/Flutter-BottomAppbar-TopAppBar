import 'dart:math';

import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();

  late DateTime _selectedDateAppBBar;
  late DateTime _selectedDateNotAppBBar;

  Random random = new Random();

  @override
  void initState() {
    super.initState();
    _selectedDateAppBBar = DateTime.now();
    _selectedDateNotAppBBar = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // backing data
    final List<Map<String,dynamic>>europeanCountries = [
      {
        'title':'08:00 - 08:45',
        'bgColor':Colors.red,
        'heading':'Geomatery',
        'room':'Room No 5',
        'person':'Alex Gadela',
      },
    {
        'title':'09:00 - 08:45',
        'bgColor':Colors.purple,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    },
    {
        'title':'10:00 - 08:45',
        'bgColor':Colors.grey,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    },
    {
          'title':'11:00 - 08:45',
          'bgColor':Colors.green,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    }
    ,{
          'title':'12:00 - 08:45',
          'bgColor':Colors.pink,
        'heading':'Geomatery',
        'room':'Room No 5',
        'person':'Alex Gadela',
    },
    {
          'title':'13:00 - 08:45',
          'bgColor':Colors.brown,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    },
    {
          'title':'14:00 - 08:45',
          'bgColor':Colors.orange,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    },
    {
          'title':'15:00 - 08:45',
          'bgColor':Colors.yellow,
      'heading':'Geomatery',
      'room':'Room No 5',
      'person':'Alex Gadela',
    },
    ];

    return Stack(children: <Widget>[
      Image.asset(
        "assets/image.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CalendarAgenda(
          backgroundColor: Colors.transparent,
          calendarEventSelectedColor: Colors.redAccent,
          controller: _calendarAgendaControllerAppBar,
          appbar: true,
          selectedDayPosition: SelectedDayPosition.right,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          weekDay: WeekDay.long,
          fullCalendarScroll: FullCalendarScroll.horizontal,
          fullCalendarDay: WeekDay.long,
          selectedDateColor: Colors.black54,
          locale: 'en',
          initialDate: DateTime.now(),
          calendarEventColor: Colors.green,
          firstDate: DateTime.now().subtract(Duration(days: 140)),
          lastDate: DateTime.now().add(Duration(days: 60)),
          events: List.generate(
              100,
              (index) => DateTime.now()
                  .subtract(Duration(days: index * random.nextInt(5)))),
          onDateSelected: (date) {
            setState(() {
              _selectedDateAppBBar = date;
            });
          },
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "Today",
              style: TextStyle(color: Colors.black),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: europeanCountries.length,
                itemBuilder: (context, index) {
                  return ListTile(

                    leading: Container(
                      height: 100,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orangeAccent.withOpacity(0.5)
                                ),
                              ),
                              Container(
                                height:10,
                                width:10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: europeanCountries[index]['bgColor']
                                ),
                              ),
                            ],
                          ),
                          Text("┇",style: TextStyle(color: Colors.black54),),
                        ],
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 0.0,top: 18.0,bottom: 8.0),
                      child: Text(
                        europeanCountries[index]['title'],
                        style: TextStyle(color: europeanCountries[index]['bgColor'],
                        fontSize: 14,fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffFBF3EB),
                        borderRadius: BorderRadius.all(Radius.circular(9.0))
                      ),
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0,top: 10.0,bottom: 7.0),
                                  child: Text(
                                    europeanCountries[index]['heading'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.black54,size: 19,),
                                      Text(
                                        europeanCountries[index]['room'],
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top: 4),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person,color: Colors.black54,size: 19,),
                                      Text(
                                        europeanCountries[index]['person'],
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 20.0,right: 20.0,bottom: 2.0),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                       Container(
                                        height: 25,
                                        width:25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: europeanCountries[index]['bgColor']
                                        ),
                                      ),
                                      Text("15",style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text("Assignment",style: TextStyle(color: Colors.black54,fontSize:11,fontWeight: FontWeight.w500),),
                                )
                              ],
                            )
                          ],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
        //body end
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff2A9F98),
          child: Image.asset("assets/home_5.png"),
          onPressed: () {},
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 8,
              color: const Color(0xff2A9F98),

              child:Container(
                height: 65,

                child: Row(

                  children: <Widget>[
                    IconButton(
                      icon: Image.asset("assets/home_4.png"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            Schedule(),));
                      },
                    ),
                    IconButton(
                      icon: Image.asset("assets/home_3.png"),
                      onPressed: () {},
                    ),
                    Spacer(

                    ),
                    IconButton(
                      icon: Image.asset("assets/home_2.png"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset("assets/home_1.png"),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
          ),
        ),
      )
    ]);
  }
}
