import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.grey.shade50,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color:Colors.grey.shade50,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: const FaIcon(
              FontAwesomeIcons.qrcode,
              color: Color.fromRGBO(244, 42, 65, 1),
            ), onPressed: () {},),
            IconButton(icon: const FaIcon(
              FontAwesomeIcons.calendar,
              color: Color.fromRGBO(244, 42, 65, 1),
            ), onPressed: () {},),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(
        onPressed: (){

        },
        child: FaIcon(
          FontAwesomeIcons.houseChimney,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(244, 42, 65, 1),//icon inside button
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color.fromRGBO(244, 42, 65, 1)
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: FaIcon(
                            FontAwesomeIcons.bell,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 28.0,
                          right: 15.0,
                          child: Container(
                            width: 6.0,
                            height: 6.0,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                color: Color.fromRGBO(0, 106, 78, 1)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///search box
                  Container(
                    width: 220,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                            horizontal: 15.0
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(width: 0.8)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(width: 0.8, color: Color.fromRGBO(244, 42, 65, 1))
                          ),
                          hintText: "Search with keyword...",
                          hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 12, fontFamily: 'Ubuntu'),
                          prefixIcon: const Icon(Icons.search, size: 22, color: Color.fromRGBO(244, 42, 65, 1)),
                      ),

                    ),
                  ),
                  Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color.fromRGBO(244, 42, 65, 1)
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.solidFolder,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13.0,),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("My Wallet", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 13.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 210,
                width: 340,
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromRGBO(244, 42, 65, 1)
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Balance", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            const SizedBox(height: 10.0,),
                            Text("UC 1000", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 83,
                          padding: EdgeInsets.only(left: 3, right: 3),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Text("U", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromRGBO(244, 42, 65, 1)),),
                              Text("podesta", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 50.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("John Doe", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                            const SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Text("0128********8956", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),),
                                SizedBox(width: 5,),
                                FaIcon(
                                  FontAwesomeIcons.eyeSlash,
                                  color: Colors.white,
                                  size: 9,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text("12 / 23", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 13.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 150,
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: (() {}),
                      icon: const FaIcon(
                        FontAwesomeIcons.solidPaperPlane,
                        color: Color.fromRGBO(244, 42, 65, 1),
                        size: 15,
                      ),
                      label: Text("Cash Out", style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.normal, fontSize: 16, color: Color.fromRGBO(244, 42, 65, 1),),),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, //background color of button
                          side: BorderSide(width:1, color: Color.fromRGBO(244, 42, 65, 1)), //border width and color
                          // elevation: 3, //e
                          // padding: EdgeInsets.all(20) //content padding inside button
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: (() {}),
                      icon: const FaIcon(
                        FontAwesomeIcons.solidFlag,
                        color: Color.fromRGBO(244, 42, 65, 1),
                        size: 15,
                      ),
                      label: Text("Update info", style: TextStyle(fontFamily: 'Ubuntu', color: Color.fromRGBO(244, 42, 65, 1),),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, //background color of button
                        side: BorderSide(width:1, color: Color.fromRGBO(244, 42, 65, 1)), //border width and color
                        // elevation: 3, //e
                        // padding: EdgeInsets.all(20) //content padding inside button
                      )
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13.0,),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal),),
                  FaIcon(
                    FontAwesomeIcons.arrowsUpDownLeftRight,
                    color: Color.fromRGBO(244, 42, 65, 1),
                    size: 18,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: 340,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color.fromRGBO(244, 42, 65, 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: Colors.white
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.moneyBill,
                              color: Color.fromRGBO(244, 42, 65, 1),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Cash out via Bkash", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                            Text("At 6.00PM-3 January 2022", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                          ],
                        ),
                        Text("-1500 BDT", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -1,
                    bottom: 28,
                    child: Container(
                      width: 5.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: 340,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: Color.fromRGBO(244, 42, 65, 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: Colors.white
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.moneyBill,
                              color: Color.fromRGBO(244, 42, 65, 1),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Cash out via Nogod", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                            Text("At 6.00PM-13 January 2022", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                          ],
                        ),
                        Text("-1300 BDT", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),),
                      ],
                    ),
                  ),
                  Positioned(
                    left: -1,
                    bottom: 28,
                    child: Container(
                      width: 5.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
