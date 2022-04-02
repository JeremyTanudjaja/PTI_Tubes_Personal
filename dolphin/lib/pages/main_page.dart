import 'package:dolphin/main.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text("Dolphin",
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 24,
              )),
        ),
        leading: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
          child: IconButton(
            onPressed: () {
              print("clicked");
            },
            icon: Icon(Icons.home),
            iconSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: IconButton(
              onPressed: () {
                print("clicked");
              },
              icon: Icon(Icons.verified_user),
              iconSize: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              color: Colors.lightBlue,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                ),
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(200, 20, 200, 10),
                child: Center(child: Text("Test 1")),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('home2.jpg'), fit: BoxFit.cover)),
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                ),
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(200, 20, 200, 10),
                child: Center(child: Text("Test 2")),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('home3.jpg'), fit: BoxFit.cover)),
            child: Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                  ),
                  height: 100,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(200, 20, 200, 10),
                  child: Center(child: Text("Test 3")),
                )),
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 61.0,
        color: Colors.black,
        child: Center(
            child: Text(
          "Dolphin Version 1.0",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
