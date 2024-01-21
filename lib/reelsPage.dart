import 'package:flutter/material.dart';
import 'package:instagram/profilePage.dart';
import 'package:instagram/searchPage.dart';

import 'createPage.dart';
import 'main.dart';

class reelsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context,String msg) {
      showDialog(
        context: context,
        builder: (BuildContext context,) {
          return AlertDialog(
            backgroundColor: Colors.black.withOpacity(0.7),
            content:  Text(msg,style: const TextStyle(color: Colors.white),),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }

    final screenHeight = MediaQuery.of(context).size.height;

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
                    icon: const Icon(Icons.home),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>const MyHomePage(),
                          ));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>searchPage(),
                          ));
                      _showAlertDialog(context,'Search feature will be available soon.');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_box_outlined),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>const createPage(),
                          ));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.video_collection_outlined),
                    color: Colors.white,
                    onPressed: () {

                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>const profilePage(),
                          ));
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/myPic.jpg"),
                      minRadius: 17,
                    ),
                  ),
                ],
              )
          ),
        ),
        body:Center(
              child: Container(
                child: const Text("Reels will be available soon!",style: TextStyle(fontSize: 25,color: Colors.white),),
              ),
            ),
    );
  }
}