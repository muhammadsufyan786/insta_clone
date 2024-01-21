import 'package:flutter/material.dart';

class messagingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    void _showAlertDialog(BuildContext context,String msg) {
      showDialog(
        context: context,
        builder: (BuildContext context,) {
          return AlertDialog(
            backgroundColor: Colors.black.withOpacity(0.7),
            // title: Text('Message'),
            content:  Text(msg,style: const TextStyle(color: Colors.white),),
            // Text('Comments will be available soon.',style: TextStyle(color: Colors.white),),
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
    final screenWidth = MediaQuery.of(context).size.width;

    var pics = ["assets/images/myPic.jpg","assets/images/AWAIS.jpg","assets/images/Hamza.jpg","assets/images/Huzaifa.jpg","assets/images/Kaif.jpg","assets/images/Moeez.jpg","assets/images/Noman.jpg","assets/images/Shees.jpg","assets/images/Sikandar.jpg","assets/images/Ali.jpg","assets/images/Umair.jpg","assets/images/Wasique.jpg","assets/images/Zahid.jpg"];
    var names= ["Your note","Awais","Hamza","Huzaifa","Kaif","Moeez","Noman","Shees","Sikandar","Ali","Umair","Wasique","Zahid"];
    var note= ["+","✌️","🖤","😏","😎","🥀","✨","💝","☠️","🕊️","🔥","😁","💕"];

    var pics2 = ["assets/images/AWAIS.jpg","assets/images/Hamza.jpg","assets/images/Huzaifa.jpg","assets/images/Kaif.jpg","assets/images/Moeez.jpg","assets/images/Noman.jpg","assets/images/Shees.jpg","assets/images/Sikandar.jpg","assets/images/Ali.jpg","assets/images/Umair.jpg","assets/images/Wasique.jpg","assets/images/Zahid.jpg"];
    var names2= ["Muhammad Awais","Rana Hamza","Muhammad Huzaifa","Muhammad Kaif","Moeez Ul Hassan","Muhammad Noman","Muhammad Shees","Muhammad Bin Sikandar","Muhammad Ali","Umair Ahmad","Wasique Asjid","Zahid Ali"];

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
        children: [
          Container(
            height: screenHeight*0.065,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:3),
                          child: TextButton(onPressed: (){
                            _showAlertDialog(context,'This option will be available soon.');
                          },
                              child: const Text("s_for_sufyan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: IconButton(
                              onPressed: (){
                                _showAlertDialog(context,'This option will be available soon.');
                              },
                              icon: const Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 28,)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          _showAlertDialog(context,'This option will be available soon.');
                        },
                        icon: const Icon(Icons.video_call_outlined,color: Colors.white,size: 37,)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: IconButton(
                          onPressed: (){
                            _showAlertDialog(context,'This option will be available soon.');
                          },
                          icon: const Icon(Icons.edit,color: Colors.white,size: 30,)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      ),
      body: Column(
        children: [
          Container(
              height: screenHeight*0.055,
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
              height: screenHeight*0.14,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.05,
                  ),
                ),
              ),
              child:
              ListView.builder(itemBuilder: (context, index){
                return
                  TextButton(
                    onPressed: () {
                      _showAlertDialog(context,'Replying feature will be available soon.');
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.3),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(pics[index]),
                                  minRadius: (screenWidth*0.098),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9.0),
                                child: Container(
                                  width: screenWidth*0.17,
                                  height: screenHeight*0.03,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(child: Text(note[index],style: TextStyle(fontSize: 12,color: Colors.white),)),
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
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Messages",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(onPressed: (){
                  _showAlertDialog(context,'This option will be available soon.');
                }, child: const Text("Requests",style: TextStyle(fontSize: 16,color: Colors.blue))),
              )
            ],
          ),
          Container(
            height: screenHeight*0.63,
            child: ListView.builder(itemBuilder: (context,index){
              return Container(
                height: screenHeight*0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:screenWidth*0.82,
                      child: TextButton(
                        onPressed: () {
                          _showAlertDialog(context,'Chatting feature will be available soon.');
                        },
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(pics2[index]),
                                    minRadius: (screenWidth*0.08),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:20,top: 2),
                                  child: Center(
                                    child: Text(names2[index],style: const TextStyle(fontSize: 18,color: Colors.white),),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15,bottom: 12),
                      child: IconButton(onPressed: (){
                        _showAlertDialog(context,'This feature will be available soon.');
                      }, icon: Icon(Icons.camera_alt_outlined,color: Colors.grey.shade700,size: 35,)),
                    )
                  ],
                ),
              );
            },
            itemCount: names2.length,),
          ),
        ],
      )
    );
  }
}