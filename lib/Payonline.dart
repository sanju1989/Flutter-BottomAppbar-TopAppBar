import 'package:demo/schedule.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';



class Payonline extends StatefulWidget {
  const Payonline({Key? key}) : super(key: key);

  @override
  _PayonlineState createState() => _PayonlineState();
}

class _PayonlineState extends State<Payonline> {
  final List<String> _dropdownValues = ["One", "Two", "Three", "Four", "Five"];

  @override
  Widget build(BuildContext context) {
    int _counter=0;
    void confirm() {
      setState(() {
        _counter++;
      });
    }
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/image.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios));
              }),
              actions: [
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/info_icon.ico"))),
                Container(
                  width: 38,
                  height: 38,
                  margin: EdgeInsets.only(right: 10.0),
                  child: Image.asset("assets/profile_icon.png"),
                ),
              ],
              centerTitle: true,
              title: Text(
                "Pay Fee Online",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      )),
                  child: DropdownButton(
                    underline: SizedBox.shrink(),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                    items: _dropdownValues
                        .map((value) => DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(value),
                            ),
                            value: value))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        value = value;
                      });
                    },
                    isExpanded: true,
                    value: _dropdownValues.first,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, right: 25.0, bottom: 20.0),
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2.0,
                            offset: Offset(0.0, 0.0))
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffFBA040),
                                        width: 3.0),
                                    borderRadius: BorderRadius.circular(100.0)),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 23.0, bottom: 25.0),
                                  child: Text(
                                    "Fees Dues",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 23.0, bottom: 0.0),
                                child: Text(
                                  "5000",
                                  style: TextStyle(
                                      color: const Color(0xffFBA040),
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rohit Sharma",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, top: 2.0),
                                  child: Icon(
                                    Icons.school_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 6.0, top: 6.0),
                                  child: Text(
                                    "College",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, top: 2.0),
                                  child: Icon(
                                    Icons.date_range_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 6.0, top: 6.0),
                                  child: Text(
                                    "23/08/2022",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 13,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(left: 9, top: 9),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFBA040),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4.0))),
                                  child: Center(
                                      child: Text(
                                    "Due Date",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  )),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //////////////////////
                Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                    Container(
                      color: Colors.blueAccent.withOpacity(0.5),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12, bottom: 14),
                      child: ConfirmationSlider(
                        height: 60,
                        width: 330,
                        sliderButtonContent: Icon(Icons.currency_rupee,color: const Color(0xff2A9F98),size: 32.0,),
                        foregroundColor: Colors.white,
                        foregroundShape: BorderRadius.circular(9.0),
                        iconColor: Colors.black,
                        text: "Left Slide to Pay",
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),
                        backgroundShape: BorderRadius.circular(9.0),
                        backgroundColor: const Color(0xff2A9F98),
                        onConfirmation: () => confirm(),
                      ),
                    ),
                  ],
                ),
                ///////////////////
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          
                          child: TabBar(
                            labelColor: Colors.grey,
                              unselectedLabelColor: Colors.grey,
                              labelStyle: TextStyle(color: const Color(0xff2A9F98)),
                              unselectedLabelStyle: TextStyle(color: const Color(0xff2A9F98)),
                              labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
                              indicatorColor: const Color(0xff2A9F98),
                              tabs: [
                            Tab(text: "Payment Summary",),
                            Tab(text: "Fee Break up"),
                            Tab(text: "Payment History"),
                          ]),
                        ),
                        Expanded(
                            child: TabBarView(children: [
                          Container(
                            child: ListView(
                              padding: const EdgeInsets.all(8),
                              children: <Widget>[
                               Table(
                                 children: [
                                   TableRow(children:[
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text('Quaterly',style:
                                       TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text(
                                         'March-July',style:
                                       TextStyle(color: const Color(0xff2A9F98),fontWeight: FontWeight.w600),),
                                     ),
                                   ]),
                                   TableRow(children:[
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text('Quaterly',style:
                                       TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text(
                                         'March-July',style:
                                       TextStyle(color: const Color(0xff2A9F98),fontWeight: FontWeight.w600),),
                                     ),
                                   ]),
                                   TableRow(children:[
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text('Quaterly',style:
                                       TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text(
                                         'March-July',style:
                                       TextStyle(color: const Color(0xff2A9F98),fontWeight: FontWeight.w600),),
                                     ),
                                   ]),
                                   TableRow(children:[
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text('Quaterly',style:
                                       TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.all(9.0),
                                       child: Text(
                                         'March-July',style:
                                       TextStyle(color: const Color(0xff2A9F98),fontWeight: FontWeight.w600),),
                                     ),
                                   ])
                                 ],
                               )
                              ],
                            )
                          ),
                          Container(
                              child: ListView(
                                padding: const EdgeInsets.all(8),
                                children: <Widget>[
                                  Table(
                                    border: TableBorder.all(color:Colors.white10),
                                    children: [
                                      TableRow(children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(9.0)
                                            ),
                                            color: const Color(0xff2A9F98),
                                            border: Border.all(color: const Color(0xff2A9F98))
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Sr. No',style:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(

                                              color: const Color(0xff2A9F98),
                                              border: Border.all(color: const Color(0xff2A9F98))
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Category',style:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(9.0)
                                              ),
                                              color: const Color(0xff2A9F98),
                                              border: Border.all(color: const Color(0xff2A9F98))
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Fee',style:
                                            TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children:[
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white),
                                            color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('1',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Tution Fee',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('9000',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children:[
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('1',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Tution Fee',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('9000',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children:[
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('1',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Tution Fee',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('9000',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children:[
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('1',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Tution Fee',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white12),
                                              color: Colors.white12
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('9000',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ]),
                                      TableRow(children:[
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('1',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('Tution Fee',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.white),
                                              color: Colors.white
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(9.0),
                                            child: Text('9000',style:
                                            TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),),
                                          ),
                                        ),
                                      ])
                                    ],
                                  ),
                                ],
                              )
                          ),
                          Container(
                              child: ListView(
                                padding: const EdgeInsets.all(8),
                                children: <Widget>[
                                  listItems2(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  listItems2(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  listItems2(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  listItems2(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  listItems2(),
                                ],
                              )
                          )
                        ]))
                      ],
                    ),
                  ),
                ),

              ],
            ),
        ),
      ],
    );
  }
  Widget listItems2() => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.all(Radius.circular(9.0)),
    ),
    height: 90,
    width: 400,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(Icons.shop,color: const Color(0xff2A9F98)),
          margin: EdgeInsets.only(left: 9, top: 12),
          decoration: BoxDecoration(
            color: const Color(0xffDBEDEC),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0,top: 20.0,right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Your payment 5000 is update successfully",
                  style: TextStyle(
                    color: Colors.grey,
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10 sec ago",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11
                    ),
                  ),

                  Text(
                    "18/08/2022",
                    style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
