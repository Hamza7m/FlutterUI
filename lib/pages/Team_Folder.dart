import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components.dart';

class TeamFolder extends StatefulWidget {
  const TeamFolder({super.key});

  @override
  State<TeamFolder> createState() => _TeamFolderState();
}

class _TeamFolderState extends State<TeamFolder> {
  int selectedIndex = 1;
  double AvailbleSize =  0 ;
  @override
  Widget build(BuildContext context) {
     AvailbleSize = MediaQuery.of(context).size.width - 50;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header field here
            Container(
              height: 175,
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roiters',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Team Flutter',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.search,
                                  size: 28,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.notifications,
                                  size: 28,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Strong',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                        TextSpan(
                            text: '9.0/10GB',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            )),
                      ])),
                  Text(
                    'Upgrade',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                CharField(0.32, Colors.red, 'SOURCES'),
                CharField(0.20, Colors.blue, 'DOCS'),
                CharField(0.10, Colors.yellowAccent, 'IMAGES'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      card(0.23, 'Desctop', '.shokes' , 'trval.jpg'),
                      card(0.23, 'Desctop', '.shokes' , 'himmel.jpg'),
                      card(0.23, 'Desctop', '.shokes' , 'alex.jpg'),
                      card(0.23, 'Desctop', '.shokes' , 'ordek.jpg'),

                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Projects',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Create',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      projectCard('CART FOLDER'),
                      projectCard('SPORT PROJECT'),
                      projectCard('NOOTBOOK'),
                      projectCard('NEW PROJECT '),
                      projectCard('DUBAI '),
                      projectCard('BARTIN '),
                      projectCard('PROJECTS '),
                    ],
                  )
                                ],
                              ),
                ))
          ],
        ),
        floatingActionButton:FloatingActionButton(
shape: RoundedRectangleBorder(
  side: BorderSide(width: 200),
  borderRadius: BorderRadius.circular(50)
),
          backgroundColor: Colors.lightBlueAccent,
          hoverColor: Colors.white60,
          hoverElevation: 0.6,

          onPressed: null,
            child: Icon(Icons.add , color: Colors.white,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedIndex ,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex:selectedIndex ,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.access_time), label: 'Time'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Folders'),

          ],
        ),
      ),
    );
  }

  Widget card(double size, String text, String subText , String path) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Container(
          height: 200,
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(16.0),
          width: AvailbleSize * size,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            boxShadow: CupertinoContextMenu.kEndBoxShadow,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Image.asset(


              'assets/$path',
            ),
          ),
        ),
        SizedBox(height: 10,),
        RichText(
          text: TextSpan(
              text: text,
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: subText,
                    style: TextStyle(color: Colors.black.withOpacity(0.6)))
              ]),
        ),
      ],
    );
  }

  Container projectCard(String folderName) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.folder,
                    color: Colors.lightBlueAccent,
                  )),
              SizedBox(
                width: 12,
              ),
              Text(folderName),
            ],
          ),
          IconButton(onPressed: null, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
    );
  }

  Widget CharField(double size, Color color, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4,
            width: AvailbleSize * size,
            decoration: BoxDecoration(color: color),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 19),
          )
        ],
      ),
    );
  }

  void _selectedIndex(int value) {
    setState(() {
       selectedIndex = value ;
    });
  }
}
