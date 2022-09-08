
import 'package:demo/Payonline.dart';
import 'package:demo/schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

class _HomePageState extends State<HomePage> {
  //String selectedValue = "Select item";

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
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
        automaticallyImplyLeading: false,

        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {}, icon: Image.asset("assets/home_icon.png"),iconSize: 10,);
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
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: 500,
              height: 125,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                      ),

                      dropdownColor: Colors.black,
                      // value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          //   selectedValue = newValue!;
                        });
                      },
                      items: [
                        DropdownMenuItem(
                          child: Text("Selct demo1"),
                          value: "Demo1",
                        ),
                        DropdownMenuItem(
                          child: Text("Selct demo2"),
                          value: "Demo2",
                        ),
                        DropdownMenuItem(
                          child: Text("Selct demo3"),
                          value: "Demo3",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 500,
              height: 200,
              color: Colors.transparent,
              child: grid2,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Recent Activites",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                    listItems(),
                    SizedBox(
                      height: 10,
                    ),
                    listItems2()
              ]),
            ),
          ],
        ),
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
    )],
    );
  }

  get dashBg => Column(
        children: <Widget>[
          Expanded(
            child: Container(color: Colors.purple),
            flex: 2,
          ),
          Expanded(
            child: Container(color: Colors.transparent),
            flex: 4,
          )
        ],
      );

  get content => Container(
          child: Column(
        children: <Widget>[header, grid2],
      ));

  get header => ListTile(
        title: Text(
          "data",
          style: TextStyle(color: Colors.white),
        ),
      );

  get grid2 => Expanded(
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildCard(),
            SizedBox(width: 12),
            buildCard2(context),
            SizedBox(width: 12),
            buildCard3(),
            SizedBox(width: 12),
            buildCard(),
            SizedBox(width: 12),
            buildCard(),
            SizedBox(width: 12)
          ],
        ),
      ));

  get grid => Expanded(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: GridView.count(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            crossAxisCount: 2,
            childAspectRatio: .90,
            children: List.generate(8, (_) {
              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[FlutterLogo(), Text('data')],
                  ),
                ),
              );
            }),
          ),
        ),
      );
}

Widget listItems() => Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(9.0)),
      ),
      margin: EdgeInsets.only(left: 20,right: 20),
      height: 90,
      width: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            child: Icon(Icons.shop,color: const Color(0xffE4872C)),
            margin: EdgeInsets.only(left: 9, top: 12),
            decoration: BoxDecoration(
              color: const Color(0xffFFAE5D1),
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
Widget listItems2() => Container(
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.all(Radius.circular(9.0)),
  ),
  margin: EdgeInsets.only(left: 20,right: 20),
  height: 90,
  width: 400,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 50,
        height: 50,
        child: Icon(Icons.shop,color: const Color(0xffE4872C)),
        margin: EdgeInsets.only(left: 9, top: 12),
        decoration: BoxDecoration(
          color: const Color(0xffFFAE5D1),
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
Widget buildCard() => Container(
    margin: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black, blurRadius: 5.0, offset: Offset(0.0, 0.50))
      ],
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
    ),
    width: 140,
    height: 160,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          child: Icon(Icons.shop),
          margin: EdgeInsets.only(left: 9, top: 12),
          decoration: BoxDecoration(
            color: const Color(0xffFBA040),
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
        Container(
          width: 100,
          height: 20,
          margin: EdgeInsets.only(left: 9, top: 12),
          child: Text(
            "₹ 5000",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 40,
          height: 13,
          margin: EdgeInsets.only(left: 9, top: 9),
          decoration: BoxDecoration(
              color: const Color(0xffFBA040),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Center(
              child: Text(
            "Due Date",
            style: TextStyle(color: Colors.white, fontSize: 9),
          )),
        ),
        Container(
          width: 100,
          height: 20,
          margin: EdgeInsets.only(left: 9, top: 1),
          child: Text(
            "31/08/2022",
            style: TextStyle(color: Colors.black, fontSize: 11),
          ),
        )
      ],
    ));

Widget buildCard2(BuildContext context) => InkWell(
  onTap: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
    Payonline(),));
  },
  child:   Container(
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black, blurRadius: 5.0, offset: Offset(0.0, 0.50))
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
      ),
      width: 140,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Icon(Icons.shop),
            margin: EdgeInsets.only(left: 9, top: 12),
            decoration: BoxDecoration(
              color: const Color(0xffEA655D),
              borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
          ),
          Container(
            width: 100,
            height: 20,
            margin: EdgeInsets.only(left: 9, top: 12),
            child: Text(
              "Fee History",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 100,
            height: 20,
            margin: EdgeInsets.only(left: 9, top: 12),
            child: Text(
              "View All",
              style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ],
      )),
);

Widget buildCard3() => Container(
    margin: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black, blurRadius: 5.0, offset: Offset(0.0, 0.50))
      ],
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
    ),
    width: 140,
    height: 160,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          child: Icon(Icons.shop),
          margin: EdgeInsets.only(left: 9, top: 12),
          decoration: BoxDecoration(
            color: const Color(0xff007EC7),
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
        Container(
          width: 100,
          height: 20,
          margin: EdgeInsets.only(left: 9, top: 12),
          child: Text(
            "Get In Touch",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 100,
          height: 25,
          margin: EdgeInsets.only(left: 9, top: 12),
          child: Text(
            "Send us email for enquiry",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ),
      ],
    ));

//
// child: Column(
// children: <Widget>[
// Container(
// margin: EdgeInsets.only(left: 15, top: 10),
// width: 50,
// height: 50,
// child: Icon(Icons.shop),
// decoration: BoxDecoration(
// color: Colors.yellow,
// borderRadius: BorderRadius.all(Radius.circular(18.0)),
// ),
// ),
//
// Row(
// children: [
// Container(
// alignment: Alignment.centerLeft,
// child: Text("Rs. 5000",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
// ),
// ],
// ),
// ],
// ),
