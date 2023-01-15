import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text("Results for CSD", style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black,),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                height: 400,
                width: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (() {

                        }),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: const DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              opacity: 0.5,
                              fit: BoxFit.cover,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(0, 0, 106, 78),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.8),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.5),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("John Doe", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                                  SizedBox(width: 5,),
                                  FaIcon(
                                    FontAwesomeIcons.certificate,
                                    color: Color.fromRGBO(244, 42, 65, 1),
                                  ),
                                ],
                              ),
                              Text("Problem Solver | Expert in FMCG | CSD", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Work at: Bangladesh Programming Ltd", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Studied from: Bangladesh University of Science", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("From: Dhaka, Bangladesh", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              SizedBox(height: 20.0,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (() {

                        }),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: const DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              opacity: 0.5,
                              fit: BoxFit.cover,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(0, 0, 106, 78),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.8),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.5),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("John Doe", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                                  SizedBox(width: 5,),
                                  FaIcon(
                                    FontAwesomeIcons.certificate,
                                    color: Color.fromRGBO(244, 42, 65, 1),
                                  ),
                                ],
                              ),
                              Text("Problem Solver | Expert in FMCG | CSD", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Work at: Bangladesh Programming Ltd", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Studied from: Bangladesh University of Science", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("From: Dhaka, Bangladesh", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              SizedBox(height: 20.0,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: (() {

                        }),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            image: const DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              opacity: 0.5,
                              fit: BoxFit.cover,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color.fromARGB(0, 0, 106, 78),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.8),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0.5),
                                Color.fromARGB(0, 0, 106, 78).withOpacity(0),
                              ],
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("John Doe", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
                                  SizedBox(width: 5,),
                                  FaIcon(
                                    FontAwesomeIcons.certificate,
                                    color: Color.fromRGBO(244, 42, 65, 1),
                                  ),
                                ],
                              ),
                              Text("Problem Solver | Expert in FMCG | CSD", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Work at: Bangladesh Programming Ltd", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("Studied from: Bangladesh University of Science", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              Text("From: Dhaka, Bangladesh", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 11, fontWeight: FontWeight.normal, color: Colors.white),),
                              SizedBox(height: 20.0,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                width: 350,
                height: 60,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(244, 42, 65, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                  ),
                  onPressed: (() {

                  }),
                  label: const Text("Follow John", style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20, fontWeight: FontWeight.normal),),
                  icon: FaIcon(
                    FontAwesomeIcons.userClock,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
