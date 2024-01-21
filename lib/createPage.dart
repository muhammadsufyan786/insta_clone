import 'package:flutter/material.dart';


class createPage extends StatefulWidget {
  const createPage({Key? key}) : super(key: key);

  @override
  State<createPage> createState() => _createPage();
}

class _createPage extends State<createPage> {
  void _showAlertDialog(BuildContext context,String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context,) {
        return AlertDialog(
          backgroundColor: Colors.black.withOpacity(0.7),
          // title: Text('Message'),
          content:  Text(msg,style: TextStyle(color: Colors.white),),
          // Text('Comments will be available soon.',style: TextStyle(color: Colors.white),),
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

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    _showAlertDialog(context,'This option will be available soon.');
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body:Column(
          children: [
            Container(
              height: screenHeight*0.05,
            ),
            Container(
              height: screenHeight*0.065,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close,color: Colors.white,size: 40,)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:6,left: 25),
                            child: Text("New Post",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          )
                        ],
                      ),
                    ],
                  ),
                  TextButton(onPressed: (){
                    _showAlertDialog(context,'This option will be available soon.');
                  }, child: Text("Next",style: TextStyle(fontSize: 15,color: Colors.blue.shade700),))
                ],
              ),
            ),
            Container(
              height: screenWidth,
              color: Colors.grey.shade800,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10,left: 10),
                    child: Container(
                      height: screenHeight*0.06,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade900.withOpacity(0.5), // Set the background color of the circular container
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            _showAlertDialog(context,'This option will be available soon.');
                          },
                          icon: const Icon(Icons.fullscreen, color: Colors.white, size: 33,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight*0.065,
              // color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        TextButton(onPressed: (){
                          _showAlertDialog(context,'This option will be available soon.');
                        }, child: Row(
                          children: [
                            Text("Recents",style: TextStyle(fontSize: 16,color: Colors.white)),
                            Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,)

                          ],
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: (){
                              _showAlertDialog(context,'This option will be available soon.');
                            },
                                icon: Icon(Icons.photo_library_outlined,color: Colors.white,)),
                            IconButton(onPressed: (){
                              _showAlertDialog(context,'This option will be available soon.');
                            },
                                icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight*0.06,
              color: Colors.white,
              child: Center(
                child: TextButton(
                  onPressed: (){
                    _showAlertDialog(context,'This option will be available soon.');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Choose from another app ",style: TextStyle(fontSize: 14,color: Colors.blue),),
                      Icon(Icons.arrow_forward_ios,color: Colors.blue,)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: screenHeight*0.2,
              child: ListView.builder(itemBuilder: (context,index) {
                return Container(
                  height: screenWidth*0.24,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: screenWidth*0.235,
                        width: screenWidth*0.245,
                        color: Colors.grey.shade900,
                        child: const Center(
                          child: Text("Content",style: TextStyle(fontSize: 12,color: Colors.white),),
                        ),
                      ),
                      Container(
                        height: screenWidth*0.235,
                        width: screenWidth*0.245,
                        color: Colors.grey.shade900,
                        child: const Center(
                          child: Text("Content",style: TextStyle(fontSize: 12,color: Colors.white),),
                        ),
                      ),
                      Container(
                        height: screenWidth*0.235,
                        width: screenWidth*0.245,
                        color: Colors.grey.shade900,
                        child: const Center(
                          child: Text("Content",style: TextStyle(fontSize: 12,color: Colors.white),),
                        ),
                      ),
                      Container(
                        height: screenWidth*0.235,
                        width: screenWidth*0.245,
                        color: Colors.grey.shade900,
                        child: const Center(
                          child: Text("Content",style: TextStyle(fontSize: 12,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                );
              },
                itemCount: (8),
              ),
            ),
            Container(
              height: screenHeight*0.072,
              child: Center(
                child: Container(
                  height: screenHeight*0.045,
                  width: screenWidth*0.9,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildOption('POST', 0),
                      _buildOption('STORY', 1),
                      _buildOption('REEL', 2),
                      _buildOption('LIVE', 3),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
  Widget _buildOption(String title, int index) {
    bool isSelected = index == _selectedIndex;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade900.withOpacity(0.5) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}