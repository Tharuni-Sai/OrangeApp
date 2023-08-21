import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NotifyScreen()));
}

class NotifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {},
              ),
              SizedBox(
                width: 2,
              ),
            ],
          ),
          title: Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body:
        // Text(
        //   "New Podcasts Release",
        //   style: TextStyle(
        //     color: Colors.black,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        padding: EdgeInsets.all(0),

                        child:
                        Image(
                          image: AssetImage('assets/images/podcast1.png'),

                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.all(0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                '837: Tristan Harries |\n Reclaiming our Future with',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Apple Talk |  60:00 mins',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  ImageIcon(
                                    AssetImage('assets/images/heart.png'),
                                    size: 18,
                                  ),
                                  SizedBox(width: 15),
                                  ImageIcon(
                                    AssetImage('assets/images/add-list.png'),
                                    size: 18,
                                  ),
                                  SizedBox(width: 15),
                                  ImageIcon(
                                    AssetImage('assets/images/down-arrow.png'),
                                    size: 18,
                                  ),
                                  SizedBox(width: 15),
                                  ImageIcon(
                                    AssetImage('assets/images/dots.png'),
                                    size: 18,
                                  ),
                                  SizedBox(width: 20),
                                  IconButton(
                                    splashRadius: 40,
                                    iconSize: 40,
                                    icon: Ink.image(
                                      width: 20,
                                      image: AssetImage('assets/images/play.png'),
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10),
                Divider(height: 0, color: Colors.white70),
              ],
            );
          },
        ),
      ),
    );
  }
}