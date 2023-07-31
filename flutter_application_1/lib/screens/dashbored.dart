//import 'dart:html';
//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medecine_donation_app/screens/alternative_medicine.dart';
import 'package:medecine_donation_app/screens/chatgptscreeen.dart';
import 'package:medecine_donation_app/screens/login.dart';
import 'package:medecine_donation_app/screens/medicinedonationform.dart';
import 'package:medecine_donation_app/screens/search_medicine.dart';

import 'DonateMedecine.dart';

import 'header_drawer.dart';

class Dashbored extends StatefulWidget {
  const Dashbored({Key? key}) : super(key: key);

  @override
  State<Dashbored> createState() => _DashboredState();
}

class _DashboredState extends State<Dashbored> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(

          // ignore: prefer_const_constructors
          title: Text('MedsApp',
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w700))),

      drawer: Drawer(
        // ignore: prefer_const_literals_to_create_immutables
        child: SingleChildScrollView(
            child: Column(
          children: [
            MyHeaderDrawer(),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DonateMedicine()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box_rounded),
              title: const Text('DonateMedicine'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.help_center),
              title: const Text('NeedMedicine'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout_sharp),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
            //  ListTile(
            //  leading: const Icon(Icons.home),
            // title: const Text('Home'),
            // onTap: () {},
            // ),
          ],
        )),
      ),
      // ignore: prefer_const_constructors
      body: Container(
        margin: const EdgeInsets.only(top: 20, right: 0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Why Medicine?',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Because our health is a fundamental part of being human.Without it,we have nothing',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                    color: Colors.white60),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 10),
                    height: 120,
                    width: double.infinity,
                    //color: Colors.white,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MedicineDonationForm())))
                      },
                      child: Text(
                        'Donate Medicine',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    height: 120,
                    width: double.infinity,
                    //color: Colors.white,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SearchPage())))
                      },
                      child: Text(
                        'Need Medicine?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    height: 120,
                    width: double.infinity,
                    //color: Colors.white,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => AlternativePage())))
                      },
                      child: Text(
                        'Check Alternative',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    height: 120,
                    width: double.infinity,
                    //color: Colors.white,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ChatGptScreen())))
                      },
                      child: Text(
                        'Any Question?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container()
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        color: Colors.blue,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety),
              label: 'Donate',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.blue),
        ]),
      ),
    );
  }
}
