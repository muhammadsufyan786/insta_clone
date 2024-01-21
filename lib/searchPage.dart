import 'package:flutter/material.dart';
import 'package:instagram/profilePage.dart';
import 'package:instagram/reelsPage.dart';

import 'createPage.dart';
import 'main.dart';

class searchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context,String msg) {
      showDialog(
        context: context,
        builder: (BuildContext context,) {
          return AlertDialog(
            backgroundColor: Colors.black.withOpacity(0.7),
            content:  Text(msg,style: TextStyle(color: Colors.white),),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.05,
                  ),
                ),
              ),
              height: screenHeight*0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>MyHomePage(),
                          ));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.add_box_outlined),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>createPage(),
                        ));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.video_collection_outlined),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>reelsPage(),
                          ));
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>profilePage(),
                          ));                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/myPic.jpg"),
                      minRadius: 17,
                    ),
                  ),
                ],
              )
          ),
        ),
        body:Column(
          children: [
            Container(
              height: screenHeight*0.037,
            ),
            Container(
              height: screenHeight*0.07,
              width: screenWidth*0.9,
              child:
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ),
            Container(
              height: screenHeight*0.823,
              child: ListView.builder(itemBuilder: (context,index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight*0.27,
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Container(
                              width: screenWidth*0.33,
                              height: screenHeight*0.268,
                              color: Colors.grey.shade900,
                              child: const Center(
                                child: Text("REEL",style: TextStyle(fontSize: 12,color: Colors.white),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight*0.27,
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                              Container(
                                height: screenHeight*0.133,
                                width: screenWidth*0.33,
                                color: Colors.grey.shade900,
                                child: const Center(
                                  child: Text("POST",style: TextStyle(fontSize: 12,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: screenWidth*0.33,
                            height: screenHeight*0.268,
                            color: Colors.grey.shade900,
                            child: const Center(
                              child: Text("REEL",style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          ),
                        ].reversed.toList(),
                      ),
                    ),
                  ],
                );
              },
                itemCount: (5),
              ),
            ),
          ],
        )
    );
  }
}