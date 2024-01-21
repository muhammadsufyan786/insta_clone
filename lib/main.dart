
import 'package:flutter/material.dart';
import 'package:instagram/messagingPage.dart';
import 'package:instagram/profilePage.dart';
import 'package:instagram/reelsPage.dart';
import 'package:instagram/searchPage.dart';

import 'createPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          size: 28.0,
          color: Colors.black// Set the desired size
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isLiked = false;
  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

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

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    var pics = ["assets/images/myPic.jpg","assets/images/AWAIS.jpg","assets/images/Hamza.jpg","assets/images/Huzaifa.jpg","assets/images/Kaif.jpg","assets/images/Moeez.jpg","assets/images/Noman.jpg","assets/images/Shees.jpg","assets/images/Sikandar.jpg","assets/images/Ali.jpg","assets/images/Umair.jpg","assets/images/Wasique.jpg","assets/images/Zahid.jpg"];
    var names= ["Your story","Awais","Hamza","Huzaifa","Kaif","Moeez","Noman","Shees","Sikandar","itx_Ali","Umair","Wasique","Zahid"];

    var pics2= ["assets/images/Ali.jpg","assets/images/Huzaifa.jpg","assets/images/myPic.jpg","assets/images/AWAIS.jpg","assets/images/Hamza.jpg","assets/images/Kaif.jpg","assets/images/Moeez.jpg","assets/images/Noman.jpg","assets/images/Shees.jpg","assets/images/Sikandar.jpg","assets/images/Wasique.jpg","assets/images/Zahid.jpg","assets/images/Umair.jpg"];
    var names2=["itx_Ali","Huzaifa","s_for_sufyan","Awais","Hamza","Kaif","Moeez","Noman","Shees","Sikandar","Wasique","Zahid","Umair"];

    var likes=["72","70","100","90","65","99","77","91","90","80","88","74","85"];
    var captions=["✨✨✨","Just wanna be cool boi 😎","Circle small,Life private,Mind at peace🕊️","Let's begin a new Journey🔥","Enjoying the journey of Life🖤","Where Should I go?"," تم بدلتےہوتوکیوں لوگ بدل جاتےہیں🥀","Be the best version of yourself 😎","Velay yaar koi kam nae 😑","I'm not perfect, But I'm perfectly myself","Postable one tho...!😅","Mash Allah 💝","Busyyy...",];
    var comments=["15","20","35","28","17","16","12","23","19","24","31","26","22"];
    var hours=["12","9","13","22","2","11","19","12","9","13","22","2","11"];

    return Scaffold(
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
      body:
        ListView(
          children: [
            Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth*0.5,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(width: screenWidth*0.02,),
                          Container(
                              width: screenWidth*0.4,
                              child: Image.asset("assets/images/InstaText.png")
                          ),
                          Container(
                            width: screenWidth*0.08,
                            child: IconButton(
                              icon: const Icon(Icons.keyboard_arrow_down_rounded),
                              color: Colors.white,
                              onPressed: () {
                                _showAlertDialog(context,'This feature will be available soon.');
                                print("Arrow Pressed!");
                              },
                            ),
                          ),
                        ],
                      ),
                  ),
                  Container(
                    width: screenWidth*0.5,
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Container(
                          child: IconButton(
                            icon: const Icon(Icons.favorite_border),
                            color: Colors.white,
                            onPressed: () {
                              _showAlertDialog(context,'Favorites will be available soon.');
                              print("Favorites Pressed!");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Container(
                              child: IconButton(
                                icon: const Icon(Icons.insert_comment_outlined),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=>messagingPage(),
                                      ));
                                },
                              ),
                            ),
                        ),
                      ],
                      ),
                  ),
              ],
              ),
              Container(
                  height: screenHeight*0.14,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child:
                  ListView.builder(itemBuilder: (context, index){
                    return
                      TextButton(
                        onPressed: () {
                          _showAlertDialog(context,'Stories feature will be available soon.');
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: screenWidth*0.22,
                                    height: screenWidth*0.22,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.pinkAccent,
                                          Colors.yellow,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      width: screenWidth*0.21,
                                      height: screenWidth*0.21,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.3),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(pics[index]),
                                      minRadius: (screenWidth*0.098),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Center(
                                child: Text(names[index],style: TextStyle(fontSize: 12,color: Colors.white),),
                              ),
                            )
                          ],
                        ),
                      );
                  },
                    itemCount: pics.length,
                    scrollDirection: Axis.horizontal,
                  )
              ),
              Container(
                height: 600,
                child:
                ListView.builder(itemBuilder: (context,index){
                  return
                    Column(
                      children: [
                        Container(
                              height:screenHeight*0.07,
                              child:
                                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          TextButton(
                                            child:
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        width: screenWidth*0.113,
                                                        height: screenWidth*0.113,
                                                        decoration: const BoxDecoration(
                                                          shape: BoxShape.circle,
                                                          gradient: LinearGradient(
                                                            begin: Alignment.topRight,
                                                            end: Alignment.bottomLeft,
                                                            colors: [
                                                              Colors.pinkAccent,
                                                              Colors.yellow,
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(1.6),
                                                        child:
                                                        Container(
                                                          width: screenWidth*0.105,
                                                          height: screenWidth*0.105,
                                                          decoration: const BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(3.6),
                                                        child: CircleAvatar(
                                                          backgroundImage: AssetImage(pics2[index]),
                                                          minRadius: (screenWidth*0.047),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                            onPressed: (){
                                              _showAlertDialog(context,'Stories feature will be available soon.');
                                            },
                                          ),
                                          TextButton(
                                              child: Text(names2[index],style: const TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                                              onPressed:(){
                                                  _showAlertDialog(context,'Accounts feature will be available soon.');
                                                     },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                    children: [
                                      Container(
                                        height: screenHeight*0.1,
                                        child: IconButton(
                                          icon: const Icon(Icons.more_vert),
                                          color: Colors.white,
                                          onPressed: () {
                                            _showAlertDialog(context,'Options will be available soon.');
                                            print("Options Pressed!");
                                          },
                                        ),
                                      ),
                                    ],)
                                  ],
                                ),
                            ),
                        Container(
                              height: screenWidth,
                              color: Colors.black,
                              child: Container(
                                  width: screenWidth,
                                  height: screenWidth,
                                  child: Image.asset(pics2[index]))
                            ),
                        Container(
                          height: screenHeight*0.05,
                          child: Padding(
                            padding: const EdgeInsets.only(top:1.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:7.0),
                                      child: InkWell(
                                        onTap: _toggleLike,
                                        child: Icon(
                                          Icons.favorite,
                                          color: _isLiked ? Colors.red : Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.insert_comment_outlined),
                                      color: Colors.white,
                                      onPressed: () {
                                        _showAlertDialog(context,'Comments will be available soon.');
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.send),
                                      color: Colors.white,
                                      onPressed: () {
                                        _showAlertDialog(context,'Sharing feature will be available soon.');
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.bookmark),
                                      color: Colors.white,
                                      onPressed: () {
                                        _showAlertDialog(context,'Saving feature will be available soon.');
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: screenHeight*0.035,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){
                                _showAlertDialog(context,'Likes will be available soon.');
                              },
                                child: Text(" ${likes[index]} likes",style: const TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: screenHeight*0.019,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("   ${names2[index]} ",style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text(" ${captions[index]}",style: const TextStyle(fontSize: 14,color: Colors.white))
                            ],
                          ),
                        ),
                        Container(
                          height: screenHeight*0.035,
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){
                                _showAlertDialog(context,'Comments will be available soon.');
                              }, child: Text(" View all ${comments[index]} comments",style: const TextStyle(fontSize: 14,color: Colors.grey,fontStyle: FontStyle.italic),))
                            ]
                          ),
                        ),
                        Container(
                          height: screenHeight*0.015,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("    ${hours[index]} hours ago",style: const TextStyle(fontSize: 13,color: Colors.grey,),),
                            ],
                          ),
                        ),
                        Container(height: screenHeight*0.01,),
                      ],
                    );
                    },
                  itemCount: pics.length,
                ),
              ),
            ],
          ),
          ],
        ),
    );
  }
}
