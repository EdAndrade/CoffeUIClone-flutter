// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coffeappui1/util/coffee_tile.dart';
import 'package:coffeappui1/util/coffee_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeType = [
    ['Capuccino', true],
    ['Latte', false],
    ['Black', false],
    ['Chocolate', false],
    ['CoffeHard', false],
    ['WhiteChocolate', false],
  ];

  void coffeTypeSelected(int index) {
    setState(() {
      for(int i = 0; i < coffeType.length; i++){
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.person))
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("Find the best coffee for you",
                  style: GoogleFonts.bebasNeue(fontSize: 56)),
            ),
            SizedBox(height: 25),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Find your coffee...',
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade600))))),
            SizedBox(height: 25),
            Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: coffeType.length,
                    itemBuilder: (context, index) {
                      return CoffeType(
                          coffeType: coffeType[index][0],
                          isSelected: coffeType[index][1],
                          onTap: (){
                            coffeTypeSelected(index);
                          });
                    })),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [CoffeTile(), CoffeTile(), CoffeTile()],
            ))
          ],
        ));
  }
}
