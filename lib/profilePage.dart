import 'package:flutter/material.dart';
import 'package:instagram/reelsPage.dart';
import 'package:instagram/searchPage.dart';

import 'createPage.dart';
import 'main.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePage();
}

class _profilePage extends State<profilePage> {
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

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>reelsPage(),
                          ));
                    },
                  ),
                  TextButton(
                    onPressed: () {
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
        body:Column(
          children: [
            Container(
              height: screenHeight*0.045,
            ),
            Container(
              height: screenHeight*0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextButton(
                        onPressed:(){
                          _showAlertDialog(context,'This option will be available soon.');
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10,top: 6),
                          child: Row(
                            children: [
                              Icon(Icons.lock_outline,color: Colors.white,size: 20,),
                              Text(" s_for_sufyan",style: TextStyle(fontSize: 24,color: Colors.white),),
                              Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 25,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: IconButton(onPressed: (){
                                _showAlertDialog(context,'This option will be available soon.');
                              },
                                icon:const Icon(Icons.add_box_outlined,color: Colors.white,size: 35,),
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: IconButton(onPressed: (){
                                _showAlertDialog(context,'This option will be available soon.');
                              },
                                icon:const Icon(Icons.menu,color: Colors.white,size: 35,),
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight*0.18,
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17,left: 17),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: const AssetImage("assets/images/myPic.jpg"),
                            minRadius: screenWidth*0.16,
                          )
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: screenHeight*0.1,
                      width: screenWidth*0.63,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                TextButton(onPressed: (){
                                  _showAlertDialog(context, "This feature will be available soon.");
                                },
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("10",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),),
                                        Text("Posts",style: TextStyle(color: Colors.white,fontSize: 13),)
                                      ],
                                    )
                                )
                              ],
                            ),
                            Column(
                              children: [
                                TextButton(onPressed: (){
                                  _showAlertDialog(context, "This feature will be available soon.");
                                },
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("248",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),),
                                        Text("Followers",style: TextStyle(color: Colors.white,fontSize: 13),)
                                      ],

                                    )
                                )
                              ],
                            ),
                            Column(
                              children: [
                                TextButton(onPressed: (){
                                  _showAlertDialog(context, "This feature will be available soon.");
                                },
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("286",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),),
                                        Text("Following",style: TextStyle(color: Colors.white,fontSize: 13),)
                                      ],
                                    )
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Row(
              children: [
                Text("محمد سفیان",style: TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
            const Row(
              children: [
                Text("      - An ordinary being with an Extraordinary God",style: TextStyle(color: Colors.white,fontSize: 15),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                children: [
                  Text("      - Managing: ",style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text("@tradeyaarofficial",style: TextStyle(color: Colors.blue.shade50,fontSize: 15),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                children: [
                  Text("      - Leading: ",style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text("@csadventuresociety",style: TextStyle(color: Colors.blue.shade50,fontSize: 15),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Row(
                children: [
                  Text("      - Working at: ",style: TextStyle(color: Colors.white,fontSize: 15),),
                  Text("@newsglobeofficial",style: TextStyle(color: Colors.blue.shade50,fontSize: 15),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Container(
                height: screenHeight*0.04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    ElevatedButton(onPressed: (){
                      _showAlertDialog(context, "This feature will be available soon.");
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          minimumSize: Size(screenWidth*0.38, screenHeight*0.05),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Edit profile",style: TextStyle(color: Colors.white,fontSize: 18),)
                    ),
                    ElevatedButton(onPressed: (){
                      _showAlertDialog(context, "This feature will be available soon.");
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          minimumSize: Size(screenWidth*0.38, screenHeight*0.05),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Share profile",style: TextStyle(color: Colors.white,fontSize: 18),)
                    ),
                    ElevatedButton(onPressed: (){
                      _showAlertDialog(context, "This feature will be available soon.");
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade900,
                          minimumSize: Size(screenWidth*0.01, screenHeight*0.05),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Icon(Icons.person_add)
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 13),
                  child: Container(
                    height: screenHeight*0.145,
                    child: TextButton(
                      onPressed: () {
                        _showAlertDialog(context,'Highlights feature will be available soon.');
                      },
                      child: Column(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: screenWidth*0.2,
                                  height: screenWidth*0.2,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:2,left: 2),
                                  child: Container(
                                    child: Icon(Icons.add,color: Colors.white,size: 40,),
                                    width: screenWidth*0.19,
                                    height: screenWidth*0.19,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("New",style: TextStyle(fontSize: 15.5,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Center(
                child: Container(
                  height: screenHeight*0.045,
                  width: screenWidth*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildOption(const Icon(Icons.grid_view,color: Colors.white,), 0),
                      _buildOption(const Icon(Icons.video_collection_outlined,color: Colors.white), 1),
                      _buildOption(const Icon(Icons.person_pin_outlined,color: Colors.white), 2),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: screenHeight*0.2,
              child: (_selectedIndex==0)?
              const Center(child: Text("No Posts to View",style: TextStyle(color: Colors.white,fontSize: 20),)):
              (_selectedIndex==1)?
              const Center(child: Text("No Reels to View",style: TextStyle(color: Colors.white,fontSize: 20),)):
              const Center(child: Text("No Tagged Posts",style: TextStyle(color: Colors.white,fontSize: 20),))
            ),
          ],
        )
    );
  }
  Widget _buildOption(Icon title, int index) {
    bool isSelected = index == _selectedIndex;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.shade900.withOpacity(1) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: title
      ),
    );
  }
}