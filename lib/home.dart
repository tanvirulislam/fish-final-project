// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_signin_firebase/appbar.dart';
import 'package:project_signin_firebase/bottom_bar.dart';
import 'package:project_signin_firebase/colors.dart';
import 'package:project_signin_firebase/custome_drawer.dart';
import 'package:project_signin_firebase/services/google_service.dart';

class Newpage extends StatelessWidget {
  AuthClass authClass = AuthClass();

  final Stream<QuerySnapshot> readyToCook =
      FirebaseFirestore.instance.collection('readyToCook').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppbarClass(),
        preferredSize: Size(200, 55),
      ),
      drawer: CustomeDrawer(),
      bottomNavigationBar: BottomBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Image.asset(
                      'assets/bg.jpg',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    // Positioned(
                    //   right: 4,
                    //   top: 4,
                    //   child: CircleAvatar(
                    //     backgroundColor: primaryColor,
                    //     radius: 33,
                    //     child: Card(
                    //       shape: CircleBorder(),
                    //       elevation: 33,
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Center(
                    //           child: Text(
                    //             '25% off',
                    //             style: TextStyle(
                    //               // fontSize: 33,
                    //               shadows: [
                    //                 Shadow(
                    //                   offset: Offset(1.0, 1.0),
                    //                   blurRadius: 3.0,
                    //                   color: Color.fromARGB(255, 0, 0, 0),
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ready to Cook',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/readytocook');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView2');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1631089134.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'RUI',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/singleProductView');
                                      },
                                      child: Text('Buy now', style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView2');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1631089111.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'PARSHE',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/singleProductView');
                                      },
                                      child: Text('Buy now', style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView2');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1631699560.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'BAGDA',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {
                                         Navigator.pushNamed(
                                            context, '/singleProductView');
                                      },
                                      child: Text('Buy now',  style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chilled Condition',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/childCondition');
                      },
                      child: Text(
                        'View all',
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/singleProductView');
                                },
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1633530854.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'RUPCHADA',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {
                                         Navigator.pushNamed(
                                            context, '/singleProductView2');
                                      },
                                      child: Text('Buy now',  style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/bigimage');
                                },
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1631698207.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SEEBUS',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {
                                         Navigator.pushNamed(
                                            context, '/singleProductView2');
                                      },
                                      child: Text('Buy now',  style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/singleProductView');
                      },
                      child: Card(
                        child: Container(
                          height: 210,
                          width: 200,
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/bigimage');
                                },
                                child: Image.network(
                                  'https://banglafishshrimp.com/public/upload/1631430177.jpg',
                                  height: 120,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'LOBSTER',
                                      softWrap: false,
                                    ),
                                    Text(
                                      '1 KG',
                                      softWrap: false,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Tk 200'),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Buy now',  style: TextStyle(color: textColor),),
                                      style: ElevatedButton.styleFrom(
                                          primary: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
